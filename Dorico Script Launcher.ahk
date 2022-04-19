/*
	Dorico script launcher
	Andrea Calligaris
		Main script
*/

#NoEnv
SetWorkingDir %A_ScriptDir%
CoordMode, Mouse, Window
SendMode Input
#SingleInstance Force
SetControlDelay 1
SetWinDelay 0
SetKeyDelay -1
SetMouseDelay -1
SetBatchLines -1

; includes
#Include include/user_settings.ahk
#Include include/functions.ahk

script_hotkey(rel_path){
	global scripts_main_folder
	global hotkey_to_open_dorico_console
	path := scripts_main_folder . "\" . rel_path . ".lua"
	launch_lua_script_via_console(path, hotkey_to_open_dorico_console)
}

; create the popup menu:
folders_arr := create_menu(scripts_main_folder)

; set popup menu hotkey:
#IfWinActive, ahk_exe Dorico4.exe
MButton::Menu, MainMenu, Show
#IfWinActive

; hotkeys
#Include include/user_hotkeys.ahk

; end the script:
Return


/*
	Labels for the menu
*/

launch_lua_script_from_menu:
	if A_ThisMenu = MainMenu
		script_path := scripts_main_folder . "\" . A_ThisMenuItem . ".lua"
	else
		script_path := scripts_main_folder . "\" . A_ThisMenu . "\" . A_ThisMenuItem . ".lua"
	launch_lua_script_via_console(script_path, hotkey_to_open_dorico_console)
*/
Return

open_scripts_folder:
	Run %scripts_main_folder%
Return

open_dorico_default_scripts_folder:
	Run %dorico_default_scripts_folder%
Return

refresh_menu:
	folders_arr := refresh_menu(scripts_main_folder, folders_arr)
	Menu, MainMenu, Show
Return
