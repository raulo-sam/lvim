"======================================================================
"
" menu_init.vim -
"
" Created by skywind on 2019/12/26
" Last Modified: 2019/12/26 16:23:48
"
"======================================================================
" themea = {description = {" ﮽  Projects           "}, command = "Telescope projects",  },
    " b = {description = {"   Settings           "}, command = ":e ~/.config/lvim/config.lua", },
    " c = {description = {"   Recently Used Files"}, command = "Telescope oldfiles", },
    " d = {description = {"   New File           "}, command = "DashboardNewFile" },
    " e = {description = {"   Ranger             "}, command = "RnvimrToggle"},
    " f = {description = {"   Find File          "}, command = "Telescope find_files", },
    " g = {description = {"   Find Word       
            " File = {icon = "", hl = "TSURI"},
            " Module = {icon = "", hl = "TSNamespace"},
            " Namespace = {icon = "", hl = "TSNamespace"},
            " Package = {icon = "", hl = "TSNamespace"},
            " Class = {icon = "𝓒", hl = "TSType"},
            " Method = {icon = "ƒ", hl = "TSMethod"},
            " Property = {icon = "", hl = "TSMethod"},
            " Field = {icon = "", hl = "TSField"},
            " Constructor = {icon = "", hl = "TSConstructor"},
            " Enum = {icon = "ℰ", hl = "TSType"},
            " Interface = {icon = "ﰮ", hl = "TSType"},
            " Function = {icon = "", hl = "TSFunction"},
            " Variable = {icon = "", hl = "TSConstant"},
            " Constant = {icon = "", hl = "TSConstant"},
            " String = {icon = "𝓐", hl = "TSString"},
            " Number = {icon = "#", hl = "TSNumber"},
            " Boolean = {icon = "⊨", hl = "TSBoolean"},
            " Array = {icon = "", hl = "TSConstant"},
            " Object = {icon = "⦿", hl = "TSType"},
            " Key = {icon = "🔐", hl = "TSType"},
            " Null = {icon = "NULL", hl = "TSType"},
            " EnumMember = {icon = "", hl = "TSField"},
            " Struct = {icon = "𝓢", hl = "TSType"},
            " Event = {icon = "🗲", hl = "TSType"},
            " Operator = {icon = "+", hl = "TSOperator"},
            " TypeParameter = {icon = "𝙏", hl = "TSParameter"}
let g:currentBrowser='nautilus'
let g:quickui_color_scheme = 'papercol dark'
let g:quickui_border_style = 2
"change preview windosw size
" let g:quickui_preview_w = 100
" let g:quickui_preview_h = 15
"select colour whith precisely    "
 " hi! QuickBG ctermfg=0 ctermbg=7 guifg=black guibg=gray
" hi! QuickSel cterm=bold ctermfg=0 ctermbg=2 gui=bold guibg=brown guifg=none
" hi! QuickKey term=bold ctermfg=9 gui=bold guifg=orange
" hi! QuickOff ctermfg=59 guifg=#75715e
" hi! QuickHelp ctermfg=247 guifg=#959173
if has('patch-8.1.2292') == 0 && exists('*nvim_open_win') == 0
	finish
endif
call quickui#menu#reset()

call quickui#menu#install("&File", [
			\ [ "&p ➜ Projects\t﮽" ,'Telescope projects'],
			\ [ "&w ➜ Save\t",'w'],
            \ [ "&a ➜ SaveAll\t", 'wa'],
			\ [ "--", ],
            \ [ "&o ➜ Open old files\t", 'Telescope oldfiles'],
            \ [ "--", ],
			\ [ "&c ➜ Config\t", 'e ~/.config/lvim/config.lua'],
            \ [ "--", ],
			\ [ "&q ➜ Exit\t", 'qa' ],
			\ ])

if has('win32') || has('win64') || has('win16')
	call quickui#menu#install('&File', [
				\ [ "--", ],
				\ [ "Start &Cmd", 'silent !start /b cmd /C c:\drivers\clink\clink.cmd' ],
				\ [ "Start &PowerShell", 'silent !start powershell.exe' ],
				\ [ "Open &Explore", 'call Show_Explore()' ],
				\ ])
endif


call quickui#menu#install("&Telescope", [
			\ ['Copyright &Telescope', 'call feedkeys("\<esc> ec")', 'Insert copyright information at the beginning'],
			\ ['&Trailing Space', 'call StripTrailingWhitespace()', ''],
			\ ['Update &ModTime', 'call UpdateLastModified()', ''],
			\ ['&Paste Mode Line', 'PasteVimModeLine', ''],
			\ ['Format J&son', '%!python -m json.tool', ''],
			\ ['--'],
			\ ['&Align Table', 'Tabularize /|', ''],
			\ ['Align &Cheatsheet', 'MyCheatSheetAlign', ''],
			\ ])

call quickui#menu#install('&Terminal', [
			\ [ "Terminal float", 'ToggleTerm direction=float' ],
			\ [ "Terminal horizontal", 'ToggleTerm direction=horizontal' ],
			\ [ "Terminal vertical", 'ToggleTerm direction=vertical' ],
			\ ])

call quickui#menu#install('&Buffer', [
            \ ["  &List Buffert\tl", 'Telescope buffers' ],
			\ ["  &Close Buffert\tc", 'BufferClose!' ],
			\ ["  Close&All Buffert\ta", 'BufferClose!' ],
			\ ])

call quickui#menu#install("Build", [
			\ ["Angular ng-serve -o", "TermExec cmd='ng serve -o'"],
			\ ["Angular ng-serve", "TermExec cmd='ng serve'"],
			\ ["Go run current file", "TermExec let g:path=expand('%:p') cmd='go run '.path"],
			\ ['--', ''],
			\ ["&Project Build\tShift+F9", 'AsyncTask project-build'],
			\ ["Project &Run\tShift+F5", 'AsyncTask project-run'],
			\ ["Project &Test\tShift+F6", 'AsyncTask project-test'],
			\ ["Project &Init\tShift+F7", 'AsyncTask project-init'],
			\ ['--', ''],
			\ ["T&ask List\tCtrl+F10", 'call MenuHelp_TaskList()'],
			\ ['E&dit Task', 'AsyncTask -e'],
			\ ['Edit &Global Task', 'AsyncTask -E'],
			\ ['&Stop Building', 'AsyncStop'],
			\ ])

call quickui#menu#install("&Git", [
			\ ['&Lazygit\tL', 'lazyGit'],
			\ ['&Show Log', 'call svnhelp#svn_log("%")'],
			\ ['File &Add', 'call svnhelp#svn_add("%")'],
			\ ])


if has('win32') || has('win64') || has('win16') || has('win95')
	call quickui#menu#install("&Git", [
				\ ['--',''],
				\ ["Project &Update\t(Tortoise)", 'call svnhelp#tp_update()', 'TortoiseGit / TortoiseSvn'],
				\ ["Project &Commit\t(Tortoise)", 'call svnhelp#tp_commit()', 'TortoiseGit / TortoiseSvn'],
				\ ["Prject L&og\t(Tortoise)", 'call svnhelp#tp_log()',  'TortoiseGit / TortoiseSvn'],
				\ ["Project &Diff\t(Tortoise)", 'call svnhelp#tp_diff()', 'TortoiseGit / TortoiseSvn'],
				\ ['--',''],
				\ ["File &Add\t(Tortoise)", 'call svnhelp#tf_add()', 'TortoiseGit / TortoiseSvn'],
				\ ["File &Blame\t(Tortoise)", 'call svnhelp#tf_blame()', 'TortoiseGit / TortoiseSvn'],
				\ ["File Co&mmit\t(Tortoise)", 'call svnhelp#tf_commit()', 'TortoiseGit / TortoiseSvn'],
				\ ["File D&iff\t(Tortoise)", 'call svnhelp#tf_diff()', 'TortoiseGit / TortoiseSvn'],
				\ ["File &Revert\t(Tortoise)", 'call svnhelp#tf_revert()', 'TortoiseGit / TortoiseSvn'],
				\ ["File Lo&g\t(Tortoise)", 'call svnhelp#tf_log()', 'TortoiseGit / TortoiseSvn'],
				\ ])
endif

call quickui#menu#install('&Tools', [
			\ ['Compare &History', 'call svnhelp#compare_ask_file()', ''],
			\ ['&Compare Buffer', 'call svnhelp#compare_ask_buffer()', ''],
			\ ['--',''],
			\ ['List &Buffer', 'call quickui#tools#list_buffer("e")', ],
			\ ['List &Function', 'call quickui#tools#list_function()', ],
			\ ['Display &Messages', 'call quickui#tools#display_messages()', ],
			\ ['--',''],
			\ ["&DelimitMate %{get(b:, 'delimitMate_enabled', 0)? 'Disable':'Enable'}", 'DelimitMateSwitch'],
			\ ['Read &URL', 'call menu#ReadUrl()', 'load content from url into current buffer'],
			\ ['&Spell %{&spell? "Disable":"Enable"}', 'set spell!', 'Toggle spell check %{&spell? "off" : "on"}'],
			\ ['&Profile Start', 'call MonitorInit()', ''],
			\ ['Profile S&top', 'call MonitorExit()', ''],
			\ ["Relati&ve number %{&relativenumber? 'OFF':'ON'}", 'set relativenumber!'],
			\ ["Proxy &Enable", 'call MenuHelp_Proxy(1)', 'setup http_proxy/https_proxy/all_proxy'],
			\ ["Proxy D&isable", 'call MenuHelp_Proxy(0)', 'clear http_proxy/https_proxy/all_proxy'],
			\ ])

call quickui#menu#install('&Plugin', [
			\ ["&NERDTree\t<space>tn", 'NERDTreeToggle', 'toggle nerdtree'],
			\ ['&Tagbar', '', 'toggle tagbar'],
			\ ["&Choose Window/Tab\tAlt+e", "ChooseWin", "fast switch win/tab with vim-choosewin"],
			\ ["-"],
			\ ["&Browse in github\trhubarb", "Gbrowse", "using tpope's rhubarb to open browse and view the file"],
			\ ["&Startify", "Startify", "using tpope's rhubarb to open browse and view the file"],
			\ ["&Gist", "Gist", "open gist with mattn/gist-vim"],
			\ ["&Edit Note", "Note", "edit note with vim-notes"],
			\ ["&Display Calendar", "Calendar", "display a calender"],
			\ ['Toggle &Vista', 'Vista!!', ''],
			\ ["-"],
			\ ["Plugin &List", "PlugList", "Update list"],
			\ ["Plugin &Update", "PlugUpdate", "Update plugin"],
			\ ])

call quickui#menu#install('Help (&?)', [
			\ ["&Keymaps\tk", 'Telescope keymaps theme=ivy'],
			\ ['Manual pages\tm', 'Telescope man_pages theme=ivy '],
			\ ], 10000)

" let g:quickui_show_tip = 1


"----------------------------------------------------------------------
" context menu
"----------------------------------------------------------------------
let g:context_menu_k = [
			\ ["&Peek Definition\tAlt+;", 'call quickui#tools#preview_tag("")'],
			\ ["S&earch in Project\t\\cx", 'exec "silent! GrepCode! " . expand("<cword>")'],
			\ [ "--", ],
			\ [ "Find &Definitionu\t\\cg", 'call MenuHelp_Fscope("g")', 'GNU Global search g'],
			\ [ "Find &Symbol\t\\cs", 'call MenuHelp_Fscope("s")', 'GNU Gloal search s'],
			\ [ "Find &Called by\t\\cd", 'call MenuHelp_Fscope("d")', 'GNU Global search d'],
			\ [ "Find C&alling\t\\cc", 'call MenuHelp_Fscope("c")', 'GNU Global search c'],
			\ [ "Find &From Ctags\t\\c&z", 'call MenuHelp_Fscope("z")', 'GNU Global search c'],
			\ [ "--", ],
			\ [ "Goto D&efinition\t(YCM)", 'YcmCompleter GoToDefinitionElseDeclaration'],
			\ [ "Goto &References\t(YCM)", 'YcmCompleter GoToReferences'],
			\ [ "Get D&oc\t(YCM)", 'YcmCompleter GetDoc'],
			\ [ "Get &Type\t(YCM)", 'YcmCompleter GetTypeImprecise'],
			\ [ "--", ],
			\ ['Dash &Help', 'call asclib#utils#dash_ft(&ft, expand("<cword>"))'],
			\ ['Cpp&man', 'exec "Cppman " . expand("<cword>")', '', 'c,cpp'],
			\ ['P&ython Doc', 'call quickui#tools#python_help("")', 'python'],
			\ ]

let g:context_menu_f = [
            \ ["&e ➜ Open in explorer\t", 'silent !'.currentBrowser.' .'],
			\ ["--", ],
			\ ]
let g:context_menu_w = [
            \ ["&s ➜ Split horizontal\t", 'split'],
            \ ["&v ➜ Split vertical\t", 'vsplit'],
            \ ["&d ➜ Move split down all with\t", 'wincmd J'],
			\ ["--", ],
			\ ["&a ➜  Close all but current\t", 'only'],
			\ ["&r ➜  Rotate window\t", 'wincmd r'],
			\ ["--", ],
			\ ]
"----------------------------------------------------------------------
" hotkey
"----------------------------------------------------------------------
" nnoremap <silent><space><space> :call quickui#menu#open()<cr>
" nnoremap <silent><space>mm :call quickui#menu#open()<cr>

" nnoremap <silent>ñ :call quickui#tools#clever_context('k', g:context_menu_k, {})<cr>
" nnoremap <silent><space>mw :call quickui#tools#clever_context('w', g:context_menu_w, {})<cr>
" nnoremap <silent><space>mf :call quickui#tools#clever_context('f', g:context_menu_file, {})<cr>
" if has('gui_running') || has('nvim')
" 	noremap <c-f10> :call MenuHelp_TaskList()<cr>
" endif

