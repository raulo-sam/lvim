" <Ctrl-c> and yy copies to clipboard, paste with <shift-insert>
vmap <C-c> y:call system("xclip -i -selection clipboard", getreg("\""))<CR>:call system("xclip -i", getreg("\""))<CR>
" vmap yy    y:call system("xclip -i -selection clipboard", getreg("\""))<CR>:call system("xclip -i", getreg("\""))<CR>
" gq to format selection as 80 char justified.
map <C-s> :w<CR>
map <C-S> :wa<CR>
" Move line" Move lines up and down using alt-up/down.
" nnoremap <A-Up> :m .-2<CR>==
" nnoremap <A-Down> :m .+1<CR>==
" inoremap <A-Up> <Esc>:m .-2<CR>==gi
" inoremap <A-Down> <Esc>:m .+1<CR>==gi
" vnoremap <A-Up> :m '<-2<CR>gv=gv
" vnoremap <A-Down> :m '>+1<CR>gv=gv
" inoremap <A-l> <right>
" inoremap <A-h> <left>

nnoremap <A-Up> :m .-2<CR>==
nnoremap <A-k> :m .-2<CR>==
nnoremap <A-Down> :m .+1<CR>==
nnoremap <A-j> :m .+1<CR>==
vnoremap <A-Up> :m '<-2<CR>gv=gv
vnoremap <A-Down> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
vnoremap <A-j> :m '>+1<CR>gv=gv
inoremap <A-k> <up>
inoremap <A-j> <down>
inoremap <A-l> <right>
inoremap <A-h> <left>

