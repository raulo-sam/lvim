let g:rnvimr_enable_ex = 1
let g:rnvimr_enable_picker = 1
let g:rnvimr_draw_border = 1
let g:rnvimr_hide_gitignore = 1
let g:rnvimr_border_attr = {'fg': 7, 'bg': -1}
let g:rnvimr_enable_bw = 1

let bufferline = get(g:, 'bufferline', {})
let bufferline.icons="both"
let bufferline.icon_close_tab_modified=''
let bufferline.icon_custom_colors="true"
if &diff
    set diffopt+=algorithm:patience
    set diffopt+=indent-heuristic
    let g:diff_translations=0 " Speed up syntax
    set syntax=diff
    set wrap               " Lines wrap to following lines"
    set nolist             " Do not display whitespace
else
    set nowrap             " Display long lines as just one line
    set list               " Do not display whitespace
endif

syntax enable              " Enables syntax highlighting
set iskeyword+=-           " Treat dash separated words as a word text object"
set formatoptions-=cro     " Stop newline continuation of comments
set hidden                 " Required to keep multiple buffers open multiple buffers
set encoding=utf-8         " The encoding displayed
set pumheight=30           " Makes pop-up menu smaller
set fileencoding=utf-8     " The encoding written to file
set ruler                  " Show the cursor position all the time
set cmdheight=1            " More space for displaying messages
set mouse=a                " Enable the mouse
set splitbelow             " Horizontal splits will automatically be below
set splitright             " Vertical splits will automatically be to the right
set t_Co=256               " Support 256 colors
set conceallevel=0         " So that I can see `` in markdown files
set tabstop=4              " Insert 4 spaces for a tab
set softtabstop=0          " Disable soft tabs
set shiftwidth=4          " Change the number of space chars inserted for indentation
" set smarttab               " Makes tabbing smarter will realize you have 2 vs 4
" set expandtab              " Converts tabs to spaces
" set smartindent            " Makes indenting smart
set autoindent             " Good auto indent
set laststatus=2           " Always display the status line
set number relativenumber  " Line numbers and relative numbers
" set cursorline             " Enable highlighting of the current line
set background=dark        " tell Vim what the background colour looks like
set showtabline=4          " Always show tabs
" set noshowmode             " We don't need to see things like -- INSERT -- anymore
set nobackup               " This is recommended by various posts
set nowritebackup          " This is recommended by various posts
" set shortmess+=c           " Don't pass messages to |ins-completion-menu|.
set signcolumn=yes         " Always show, otherwise it would shift the text each time
" set updatetime=300         " Faster completion
set timeoutlen=450         " By default this is 1000 ms
set incsearch              " Highlight all matches
set clipboard=unnamedplus  " Copy paste between Vim and everything else
set guifont=SauceCodePro\ Nerd\ Font\ Mono:h15
set ignorecase             " When searching ignore case of words
set scrolloff=3            " Keep 3 line buffer at top and bottom of the screen
set termguicolors

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

                                   " Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
                                   " config to vim-anyfold
filetype plugin indent on          " required
syntax on                          " required
autocmd Filetype * AnyFoldActivate " activate for all filetypes
set foldlevel=99                   " close all folds
