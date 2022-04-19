/*
	Dorico script launcher
		Functions
*/


launch_lua_script_via_console(path, hotkey_to_open_dorico_console)
{
	command := "local app=DoApp.DoApp(); app:doCommand([[Script.RunScript?ScriptPath=" . path . "]])"

	Send %hotkey_to_open_dorico_console%
	Sleep, 10
	WinWaitActive, Dorico ahk_exe Dorico4.exe
	Sleep, 10
	Send, {Tab}
	Sleep, 10
	SendRaw, %command%
	Sleep, 10
	Send, {Enter}
	Sleep, 10
	Send, !{F4}
	Sleep, 10
}


create_menu(scripts_main_folder){
	file_list := ""
	Loop, Files, %scripts_main_folder%\*.lua, R
	{
		file_list .= A_LoopFileFullPath . "`n"
	}
	Sort, file_list,
	files_arr := StrSplit(file_list, "`n")
	files_arr.pop()

	folder_list := ""
	Loop, Files, %scripts_main_folder%\*, DR
	{
		folder_list .= A_LoopFileFullPath . "`n"
	}
	Sort, folder_list,
	folders_arr := StrSplit(folder_list, "`n")
	folders_arr.pop()

	for index, element in folders_arr
	{
		StringReplace, path, element, %scripts_main_folder%\,
		StringGetPos, pos, path, \, R
		StringLeft, parent_dir, path, %pos%
		StringReplace, dir, path, %parent_dir%,
		StringReplace, dir, dir, \

		; menus can only be created by adding items to them, so create one item and then remove it
		Menu, %path%, Add, tmp_item, launch_lua_script_from_menu
		Menu, %path%, Delete, tmp_item

		if parent_dir =
			parent_dir = MainMenu
		Menu, %parent_dir%, Add, %dir%, :%path%
	}

	for index, element in files_arr
	{
		StringReplace, path, element, %scripts_main_folder%\,
		StringGetPos, pos, path, \, R
		StringLeft, parent_dir, path, %pos%

		StringReplace, file, path, %parent_dir%,
		StringReplace, file, file, \

		StringGetPos, pos, file, .lua, R
		StringLeft, file_no_ext, file, %pos%

		if parent_dir =
			parent_dir = MainMenu
		Menu, %parent_dir%, Add, %file_no_ext%, launch_lua_script_from_menu
	}

	Menu, MainMenu, Add ; separator
	Menu, MainMenu, Add, Scripts folder, open_scripts_folder
	Menu, MainMenu, Add ; separator
	Menu, MainMenu, Add, Recording folder, open_dorico_default_scripts_folder
	Menu, MainMenu, Add ; separator
	Menu, MainMenu, Add, Refresh, refresh_menu

	Return folders_arr
}


delete_menu(scripts_main_folder, folders_arr){
	for index, element in folders_arr
	{
		StringReplace, path, element, %scripts_main_folder%\,
		Menu, %path%, DeleteAll
	}

	Menu, MainMenu, DeleteAll
}


refresh_menu(scripts_main_folder, folders_arr){
	delete_menu(scripts_main_folder, folders_arr)
	Return create_menu(scripts_main_folder)
}
