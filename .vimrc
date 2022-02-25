" hottaro -vimrc 2013 update 2022
" https://vimawesome.com/0
"
"
" /////////////////////////////////////////// Base Setting /////////////////////////////////////////// "
" tab display only file
set guitablabel=\ %t\ %M
" set number                           
set history=100
set cmdheight=1
" set color
set t_Co=256                 
colorscheme desert
" highlight config files
au BufEnter,BufRead *conf setf dosini
au BufEnter,BufRead *toml setf dosini
au BufEnter,BufRead *ini setf dosini
au BufEnter,BufRead *yaml setf dosini
"let g:solarized_termtrans  = 1
"let g:solarized_termcolors = 256
"let g:solarized_contrast   = "high"
"let g:solarized_visibility = "high"
" set column and raw line
set cursorline              
" set cursorcolumn             
" ?? 
set ttyfast
" show current position for cursor
set ruler
" use the same indent 
"set autoindent
set smartindent
" can switch buff without save files
"set hidden
" status line {
set statusline+=%n\ \|                                                                                     "buffer number
set statusline+=%Y\ \|                                                                                     " filetype
set statusline+=%{\"\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\"+\":\"\").\"\"}\ \|      " fileencode
set statusline+=%{&ff}\ \|                                                                                 " fileformat
set statusline+=%F%m%r%h%w\                                                                                " file path (modify flag)
set statusline+=%=[asc=%03.3b]\ [hex=%02.2B]                                                               " ASCII and hex code
set statusline+=\ [%04l,%02v\|%L][%p%%]                                                                    " current position
set laststatus=2
" }
" /////////////////////////////////////////// Base Setting end//////////////////////////////////////// "

" /////////////////////////////////////////// F1-12 setting /////////////////////////////////////////// "
nnoremap <F3> :q!<cr>
inoremap <F3> <Esc>:q!<cr>
nnoremap <F4> :w<cr>
inoremap <F4> <Esc>:w<cr>
" /////////////////////////////////////////// F1-12 setting end /////////////////////////////////////// "

" /////////////////////////////////////////// Ctrl setting //////////////////////////////////////////// "
" +++++++++++++++++++++++++++++++++++++++++++ Move setting ++++++++++++++++++++++++++++++++++++++++++++ "
" move between windows
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
" move in insert mode
inoremap <c-j> <down>
inoremap <c-k> <up>
inoremap <c-l> <right>
inoremap <c-h> <left>
" move between tab
nmap <C-b> gT
imap <C-b> <Esc>gT
nmap <C-n> gt
" +++++++++++++++++++++++++++++++++++++++++++ Move setting end ++++++++++++++++++++++++++++++++++++++++++++ "
" set copy with c-c
vnoremap <C-C> "+y
" set paste mode
set pastetoggle=<C-F10>
" 'Yggdroot/LeaderF' {
let g:Lf_ShortcutF = '<c-p>'
noremap <c-f> :Leaderf rg 
noremap <c-\> :LeaderfBuffer<cr>
"noremap <c-\> :LeaderfMru<cr>
""noremap <m-m> :LeaderfTag<cr>
" }
"NEREDTree {
nnoremap <F9> :NERDTree<CR>
nnoremap <C-F9> :NERDTreeClose<CR>
" }
" /////////////////////////////////////////// Ctrl setting end //////////////////////////////////////// "

" /////////////////////////////////////////// Leader ',' setting ////////////////////////////////////// "
let mapleader=","
" cancel hlsearch {
nnoremap <leader>/ :noh<cr>
" }
" set show and hide no, {
nnoremap <silent> <leader>n :set nu<cr>
nnoremap <leader>m :set nonu<cr>
" }
" for files {
" write file
nnoremap <leader>w :w<cr>
" quit file
nnoremap <leader>q :q<cr>
" quit all file
nnoremap <leader>aq :qall!<cr>
" write and quit file :x = wq
nnoremap <leader>x :x<cr> 
" }
"Tab configuration
map <leader>tn :tabnew
"for ctag
" nmap <leader>nt :tn<cr>
" nmap <leader>Nt :tN<cr>
" nmap <leader>rn <Plug>(coc-rename)
" nmap <leader>rf <Plug>(coc-refactor)
" 'Yggdroot/LeaderF' {
nmap <leader>f :LeaderfFunction<cr>
nmap <leader>l :LeaderfSelf<cr>
" }
" 'nathanaelkane/vim-indent-guides' {
" <leader>ig 
nmap <silent> <Leader>g <Plug>IndentGuidesToggle
" }
" vim-easycomplete {
" next and previous error
nnoremap <silent> <Leader>e :EasyCompleteNextDiagnostic<CR>
nnoremap <silent> <Leader>b :EasyCompletePreviousDiagnostic<CR>
nnoremap <silent> <Leader>v :EasyCompleteEnable<CR>
nnoremap <silent> <Leader>z :EasyCompleteDisable<CR>
" }
" /////////////////////////////////////////// Leader ',' setting end /////////////////////////////////// "


" /////////////////////////////////////////// Plug start /////////////////////////////////////////////// "
call plug#begin()
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'nathanaelkane/vim-indent-guides'
" tab show tabnum and filename only
Plug 'mkitt/tabline.vim'
" autocompletion
Plug 'jayli/vim-easycomplete'
" search 
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
call plug#end()
" /////////////////////////////////////////// Plug end ///////////////////////////////////////////////// "

" /////////////////////////////////////////// Plug setting start /////////////////////////////////////// "
" vim-easycomplete {
" let g:easycomplete_tab_trigger="<tab>"
" let g:easycomplete_diagnostics_enable = 0  " grammar check
" let g:easycomplete_signature_enable = 0 " code function check
" （dark, light, rider, sharp）
let g:easycomplete_scheme="dark" 
let g:easycomplete_lsp_checking = 1
let g:easycomplete_diagnostics_enable = 0
"}
"The-NERD-tree {
"let NERDTreeWinPos="right"
let g:NERDTreeWinSize = 30
" autocmd VimEnter * NERDTree
autocmd BufWinEnter * NERDTreeMirror
"let g:NERDTreeQuitOnOpen = 1
"} 
" 'Yggdroot/LeaderF' {
let g:Lf_WorkingDirectoryMode = 'AF'
let g:Lf_RootMarkers = ['.git', '.svn', '.hg', '.project', '.root']
let g:Lf_ShowDevIcons = 0
let g:Lf_WildIgnore = { 
                \ 'dir': ['img','.svn','.git','.hg','.vscode'],
            \ 'file': ['run.*','*.png','*.sw?','~$*','*.bak','*.exe','*.o','*.ko','*.so','*.py[co]']
            \}
" }
" /////////////////////////////////////////// Plug setting end ///////////////////////////////////////// "

" /////////////////////////////////////////// Global setting /////////////////////////////////////////// "
"tab setting {
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
" }
" enable mouse
if has('mouse')
   set mouse=a
endif
" color filetype
filetype plugin indent on
" search setting
set wrap
set ignorecase
set smartcase
set incsearch  
set hlsearch  
set showmatch
" no support for vi
set nocompatible
" special search add '\' except ($ . * ^)
set magic
" support unicode 
" set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
" disable delete key in normal mode
set backspace=indent,eol,start
""Turn backup off
set nobackup
set nowb
set noswapfile
"no ring 
set noerrorbells
set novb t_vb=
" set zfold
set foldmethod=indent
" set foldlevel=3
" open syntax
syntax on
set showcmd
set showmode 
" list the all command list
set wildmenu
"key setting {
set timeoutlen=1000 ttimeoutlen=0
"}
" for tmux {
if exists('$TMUX')
    set term=screen-256color
endif
if &term =~ '^screen' && exists('$TMUX')
    set mouse+=a
    " tmux knows the extended mouse mode
    set ttymouse=xterm2
    " tmux will send xterm-style keys when xterm-keys is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
    execute "set <xHome>=\e[1;*H"
    execute "set <xEnd>=\e[1;*F"
    execute "set <Insert>=\e[2;*~"
    execute "set <Delete>=\e[3;*~"
    execute "set <PageUp>=\e[5;*~"
    execute "set <PageDown>=\e[6;*~"
    execute "set <xF1>=\e[1;*P"
    execute "set <xF2>=\e[1;*Q"
    execute "set <xF3>=\e[1;*R"
    execute "set <xF4>=\e[1;*S"
    execute "set <F5>=\e[15;*~"
    execute "set <F6>=\e[17;*~"
    execute "set <F7>=\e[18;*~"
    execute "set <F8>=\e[19;*~"
    execute "set <F9>=\e[20;*~"
    execute "set <F10>=\e[21;*~"
    execute "set <F11>=\e[23;*~"
    execute "set <F12>=\e[24;*~"
endif
" }
" /////////////////////////////////////////// Global setting end /////////////////////////////////////// "

