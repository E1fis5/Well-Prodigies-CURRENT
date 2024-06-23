// Feather disable all
function __input_system_tick()
{
    __INPUT_GLOBAL_STATIC_LOCAL  //Set static _global
    
    _global.__frame++;
    _global.__previous_current_time = _global.__current_time;
    _global.__current_time = current_time;
    _global.__cleared = false;
    

    #region Keyboard
    
    //Unstick
    if (_global.__keyboard_allowed && keyboard_check(vk_anykey))
    {
        var _platform = os_type;
        if (INPUT_ON_WEB && __INPUT_ON_APPLE) _platform = "apple_web";

        switch(_platform)
        {
            case os_windows:
                if (keyboard_check(vk_alt) && keyboard_check_pressed(vk_space))
                {
                    //Unstick Alt Space
                    keyboard_key_release(vk_alt);
                    keyboard_key_release(vk_space);
                    keyboard_key_release(vk_lalt);
                    keyboard_key_release(vk_ralt);
                }

                if (keyboard_check(0xE6) && !keyboard_check_pressed(0xE6))
                {
                    //Unstick OEM key (Power button on Steam Deck)
                    keyboard_key_release(0x0E6);
                }
            break;            
            case "apple_web": //This case applies on iOS, tvOS, and MacOS
                if (keyboard_check_released(vk_lmeta) || keyboard_check_released(vk_rmeta))
                {
                    //Meta release sticks every key pressed during hold
                    //This is "the nuclear option", but the problem is severe
                    var _i = 8;
                    var _len = 255 - _i;
                    repeat(_len)
                    {
                        keyboard_key_release(_i);
                        ++_i;
                    }
                }
            break;                
            case os_macosx:
                //Unstick doubled-up control keys
                if (keyboard_check_released(vk_control))
                {
                    keyboard_key_release(vk_lcontrol);
                    keyboard_key_release(vk_rcontrol);
                }
            
                if (keyboard_check_released(vk_shift))
                {
                    keyboard_key_release(vk_lshift);
                    keyboard_key_release(vk_rshift);
                }
            
                if (keyboard_check_released(vk_alt))
                {
                    keyboard_key_release(vk_lalt);
                    keyboard_key_release(vk_ralt);
                }
            
                //Unstick Meta
                if (keyboard_check_released(vk_lmeta))
                {
                    keyboard_key_release(vk_rmeta);
                }
                else if (keyboard_check_released(vk_rmeta) && keyboard_check(vk_lmeta))
                {
                    keyboard_key_release(vk_lmeta);
                }
            break;
        }
    }
    
    #endregion
    
    
    
    #region Gamepads
    
    var _steam_handles_changed = false;
    if (_global.__using_steamworks)
    {
        steam_input_run_frame();
        _steam_handles_changed = __input_steam_handles_changed();        
        _global.__steam_handles = steam_input_get_connected_controllers();
    }
    
    if (_global.__gamepad_allowed && (_global.__frame > __INPUT_GAMEPADS_TICK_PREDELAY))
    {
        //Android gamepad enumeration (enables USB hotplugging)
        if (_global.__allow_gamepad_enumerate)
        {
            if (_global.__current_time - _global.__enumeration_time > INPUT_ANDROID_GAMEPAD_ENUMERATION_INTERVAL)
            {
                _global.__enumeration_time = _global.__current_time;
                gamepad_enumerate();
            }
        }
        
        //Expand dynamic device count
        if (__INPUT_ON_LINUX || __INPUT_ON_ANDROID)
        {
            var _g = array_length(_global.__gamepads);
            var _change = max(0, gamepad_get_device_count() - _g);
            repeat(_change)
            {
                _global.__gamepads[_g] = undefined;
                array_push(INPUT_GAMEPAD, new __input_class_source(__INPUT_SOURCE.GAMEPAD, array_length(INPUT_GAMEPAD)));
            
                if ((_global.__source_mode == INPUT_SOURCE_MODE.MIXED) || (_global.__source_mode == INPUT_SOURCE_MODE.MULTIDEVICE))
                {
                    _global.__players[0].__source_add(INPUT_GAMEPAD[array_length(INPUT_GAMEPAD)-1]);
                }
            
                ++_g;
            }
        }
        
        var _g = 0;
        repeat(array_length(_global.__gamepads))
        {
            var _connected = gamepad_is_connected(_g);
            _global.__gamepad_connections_native[_g] = _connected;
            _global.__gamepad_connections_internal[_g] = false;
            
            var _gamepad = _global.__gamepads[_g];
            if (is_struct(_gamepad))
            {
                if (_connected)
                {
                    with (_gamepad)
                    {
                        if ((os_type == os_switch) && (description != gamepad_get_description(_g)))
                        {
                            //When Switch L+R assignment is used to pair two gamepads we won't see a normal disconnection/reconnection
                            //Instead we have to check for changes in the description to see if state has changed
                            discover();
                        }
                        else
                        {
                            if (_steam_handles_changed) 
                            {
                                virtual_set();
                                led_set();
                            }
                        }
                    }
                }
                
                var _sustain_connection = _gamepad.tick(_connected);
                _global.__gamepad_connections_internal[_g] = _sustain_connection;
                
                if not (_sustain_connection)
                {
                    //Remove our gamepad handler
                    if (!__INPUT_SILENT) __input_trace("Gamepad ", _g, " disconnected");
                        
                    gamepad_set_vibration(_global.__gamepads[_g].index, 0, 0);
                    _global.__gamepads[@ _g] = undefined;
                        
                    //Also report gamepad changes for any active players
                    var _p = 0;
                    repeat(INPUT_MAX_PLAYERS)
                    {
                        with(_global.__players[_p])
                        {
                            if (__source_contains(INPUT_GAMEPAD[_g]))
                            {
                                __input_trace("Player ", _p, " gamepad disconnected");
                                __source_remove(INPUT_GAMEPAD[_g]);
                            }
                        }
                        
                        ++_p;
                    }
                }
            }
            else
            {
                if (_global.__gamepad_connections_native[_g])
                {
                    __input_trace("Gamepad ", _g, " connected");
                    if (!__INPUT_SILENT) __input_trace("New gamepad = \"", gamepad_get_description(_g), "\", GUID=\"", gamepad_get_guid(_g), "\", buttons = ", gamepad_button_count(_g), ", axes = ", gamepad_axis_count(_g), ", hats = ", gamepad_hat_count(_g));
                    
                    _global.__gamepads[@ _g] = new __input_class_gamepad(_g);
                }
            }
            
            ++_g;
        }
    }
    
    #endregion
    
    
    #region Players
    
    var _p = 0;
    repeat(INPUT_MAX_PLAYERS)
    {
        _global.__players[_p].tick();
        ++_p;
    }
    
    #endregion
    
    switch(_global.__source_mode)
    {
        case INPUT_SOURCE_MODE.FIXED:       /* Do nothing! */                      break;
        case INPUT_SOURCE_MODE.JOIN:        __input_multiplayer_assignment_tick(); break;
        case INPUT_SOURCE_MODE.HOTSWAP:     __input_hotswap_tick();                break;
        case INPUT_SOURCE_MODE.MIXED:                                              break;
        case INPUT_SOURCE_MODE.MULTIDEVICE:                                        break;
    }
    
    
    
    if (_global.__allow_gamepad_tester && _global.__gamepad_tester_data.__enabled)
    {
        __input_gamepad_tester_tick();
    }
}
