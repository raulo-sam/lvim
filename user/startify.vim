
let g:startify_bookmarks = [ 
            \{'s':'~/.config/lvim/user/startify.vim' },
            \'~/Documentos/Angular' ,
            \{'c': '~/.config/lvim'},
            \{'g': '~/go/src/proyectos'},
            \{'n': '~/.config/nvim'},
            \] 
" let g:startify_commands = [
"         \ ['Vim Reference', 'h ref'],
"         \ ':help reference',
"         \ {'h': 'h ref'},
"         \ {'m': ['My magical function', 'call Magic()']},
"         \ ]
   autocmd User Startified setlocal cursorline

    let g:startify_enable_special = 0

 let g:startify_lists = [
             \ { 'header': ['   Sessions'],       'type': 'sessions' },
             \ { 'header': ['   Boomarks'],       'type': 'bookmarks' },
             \ { 'header': ['   MRU'],            'type': 'files' },
             \ { 'header': ['   MRU '. getcwd()], 'type': 'dir' },
             \ ]




 let g:startify_custom_header = [
                \'               __',
                \'   _______  __/ /___     ____  ____ _      _____  _____',
                \'  / ___/ / / / / __ \   / __ \/ __ \ | /| / / _ \/ ___/',
                \' / /  / /_/ / / /_/ /  / /_/ / /_/ / |/ |/ /  __/ /',
                \'/_/   \__,_/_/\____/  / .___/\____/|__/|__/\___/_/',
                \'                     /_/',
                \ ]
