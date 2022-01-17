" hottaro -vimrc 2013
" alias vim='mvim -v'
" echo alias vim='/usr/local/bin/mvim' >> .bash_profile
" Allow us to use Ctrl-s and Ctrl-q as keybinds
"silent !stty -ixon
" Restore default behaviour when leaving Vim.
"autocmd VimLeave * silent !stty ixon
"
"speed vim on mac {
let loaded_matchparen=1 " Don't load matchit.vim (paren/bracket matching)
set noshowmatch         " Don't match parentheses/brackets
set nocursorline        " Don't paint cursor line
set nocursorcolumn      " Don't paint cursor column
set lazyredraw          " Wait to redraw
set scrolljump=8        " Scroll 8 lines at a time at bottom/top
let html_no_rendering=1 " Don't render italic, bold, links in HTML
"speed vim on mac end }
"
"encoding ...
set nocp
set nocompatible
filetype off
set fencs=gb18030,utf8
"Enable mouse
if has('mouse')
   set mouse=a
endif
"Color Settings {
"set colorcolumn=7           
set t_Co=256                 
set background=dark
set cursorline              
"set cursorcolumn             
set ttyfast
set ruler
"set backspace=indent,eol,start
colorscheme desert
let g:solarized_termtrans  = 1
let g:solarized_termcolors = 256
let g:solarized_contrast   = "high"
let g:solarized_visibility = "high"
"}
"tab setting {
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
"}
"normal setting {
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
"set fileencodings=utf-8,gb2312,gbk,gb18030
set termencoding=utf-8
set fileformats=unix
"set encoding=prc
set fileformat=unix
set scrolloff=3
set fenc=utf-8
set autoindent
set hidden
"set encoding=utf-8
set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P
set laststatus=2
"set number                           
set history=100
set cmdheight=1
"set undofile                       
"set nowrap                        
"autocmd! bufwritepost _vimrc source %
"set relativenumber
set wrap
set ignorecase
set smartcase
"set gdefault
set incsearch
set showmatch
set hlsearch
"} -- normal setting
"edit setting{
set whichwrap=b,s,<,>,[,]  "Auto change line
vnoremap <C-C> "+y
"for c/c++
set cindent
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s
set lbr
set sm
"} -- edit setting
"new 20140811
"improve for command auto
set wildmenu
"no ring
set noerrorbells
set novb t_vb=
"magic setting
set magic
"Turn backup off
set nobackup
set nowb
set noswapfile
"key setting {
set timeoutlen=1000 ttimeoutlen=0
"}
" Folding
"set fen
"set fdl=0
nmap <silent> <leader>zo zO
vmap <silent> <leader>zo zO
"""""""""" Spell check on """"""""""
"set spell spelllang=en_us
"setlocal spell spelllang=en_us
"highlight clear SpellBad
"highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
"highlight clear SpellCap
"highlight SpellCap term=underline cterm=underline
"highlight clear SpellRare
"highlight SpellRare term=underline cterm=underline
"highlight clear SpellLocal
"highlight SpellLocal term=underline cterm=underline
"map <leader>sn ]s
"map <leader>sp [s
"map <leader>sa zg
"map <leader>s? z=
"---------------------------plugin-----------------------------------------
call plug#begin()
"set nocompatible    " be iMproved
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
" let Vundle manage Vundle
" required!
"Plugin 'VundleVim/Vundle.vim'
" vim-scripts repos
"Plugin 'Lokaltog/powerline'
"Plug 'ctrlp.vim'
"Plug 'Lokaltog/powerline'
" 文件树
Plug 'scrooloose/nerdtree'
" 文件树 end
" 可以快速对齐的插件
Plug 'junegunn/vim-easy-align'
" 配色方案
" colorscheme neodark
Plug 'KeitaNakamura/neodark.vim'
" 各种语言支持, 自动补全
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" 各种语言支持 end
" CocInstall coc-json coc-css coc-html coc-vetur coc-phpls coc-java coc-python  coc-highlight coc-emmet coc-lists coc-xml
" 左侧面函数列表
"Plug 'majutsushi/tagbar' LeaderfFunction 替代
" 左侧面函数列表 end
" 异步自动补全  https://github.com/Shougo/deoplete.nvim/
" Plug 'Shougo/deoplete.nvim'
" Plug 'roxma/nvim-yarp'
" Plug 'roxma/vim-hug-neovim-rpc'
" 异步自动补全  https://github.com/Shougo/deoplete.nvim/ end
" 页内快速移动
Plug 'easymotion/vim-easymotion'
" 页内快速移动 end
" 文件搜索 fzf.vim leaderf
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"Plug 'junegunn/fzf.vim'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
" 文件搜索 end 
"
" 自动括号配对
Plug 'jiangmiao/auto-pairs'
" 语法检查 
Plug 'dense-analysis/ale'
" 跳转vim-gutentags
Plug 'ludovicchabant/vim-gutentags'
" 跳转vim-gutentags end
" go 插件
"Plug 'govim/govim'
Plug 'dgryski/vim-godef'
Plug 'jstemmer/gotags'
Plug 'roxma/SimpleAutoComplPop'
Plug 'fatih/vim-go'
Plug 'Blackrush/vim-gocode'
"Plug 'nsf/gocode', {'rtp': 'vim/'}
" go 插件 end
"Plug 'storyn26383/vim-vue'
"Plug 'StanAngeloff/php.vim'
"Plug 'OmniCppComplete'
"Plug 'Gundo'
"Plug 'dgryski/vim-godef'
"Plug 'jstemmer/gotags'
""Plug 'fatih/vim-go'
"Plug 'nsf/gocode', {'rtp': 'vim/'}
"Plug 'bling/vim-airline'
"Plug 'mtth/scratch.vim'
"Plug 'greplace.vim'
"Plug 'roxma/SimpleAutoComplPop'
"Plug 'godlygeek/tabular'
"for markdown
"Plug 'plasticboy/vim-markdown'
"for vue
" Plugin 'posva/vim-vue'


"for coc
" Use release branch (Recommend)
" Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}
call plug#end()


" " Or build from source code by use yarn: https://yarnpkg.com
" Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
"Plugin 'xolox/vim-easytags'
"Plugin 'xolox/vim-misc'
"Plugin 'L9'
"Plugin 'FuzzyFinder'
"Bundle 'minibufexplorerpp'
"Bundle 'TabBar'
"Bundle 'winmanager'
"Bundle 'SrcExpl'
"Bundle 'Trinity'
"Plugin 'fsouza/go.vim'
"Bundle 'vim-plugin-foo'
"Bundle 'vim-plugin-bar'
"Bundle 'Valloric/YouCompleteMe'
"Plugin 'mru'
"Bundle 'cscope'
"Bundle 'clang-complete'
"call vundle#end()            " required
filetype plugin indent on    " required
"} -- Vunble
"vim-godef {
"let godef_same_file_in_same_window=1
let godef_split=2
"}
"OmniCppComplete {
"let OmniCpp_ShowPrototypeInAbbr = 1
"let OmniCpp_ShowAccess = 1
"} -- OmniCppComplete end
"Gundo }
"let g:gundo_width = 20
"let g:gundo_preview_height = 20
"let g:gundo_right = 1
"} -- Gundo end
"
" ale.vim {
let g:ale_linters_explicit = 1
let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:airline#extensions#ale#enabled = 1

let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++14'
let g:ale_c_cppcheck_options = ''
let g:ale_cpp_cppcheck_options = ''

let g:ale_sign_error = "\ue009\ue009"
hi! clear SpellBad
hi! clear SpellCap
hi! clear SpellRare
hi! SpellBad gui=undercurl guisp=red
hi! SpellCap gui=undercurl guisp=blue
hi! SpellRare gui=undercurl guisp=magenta

"} -- ale end

" 文件搜索 fzf.vim
" [Buffers] Jump to the existing window if possible
"let g:fzf_buffers_jump = 1
" [[B]Commits] Customize the options used by 'git log':
"let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
" [Tags] Command to generate tags file
"let g:fzf_tags_command = 'ctags -R'
" [Commands] --expect expression for directly executing the command
"let g:fzf_commands_expect = 'alt-enter,ctrl-x'
"nnoremap <silent> <c-p> :Files<CR>
"nnoremap <silent> <Leader>b :Buffers<CR>
" ag 搜索
"command! -bang -nargs=* Ag
"  \ call fzf#vim#ag(<q-args>,
"  \                 <bang>0 ? fzf#vim#with_preview('up:60%')
"  \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
"  \                 <bang>0)
"nnoremap <silent> <Leader>A :Ag<CR>
" 文件搜索 leaderf
" <leaderf> find file
"nmap <silent> <c-\> :LeaderfFunction!<CR>
noremap <c-p> :LeaderfFunction!<cr>
noremap <c-\> :LeaderfMru<cr>
"noremap <m-n> :LeaderfBuffer<cr>
"noremap <m-m> :LeaderfTag<cr>
"let g:Lf_StlSeparator = { 'left': '', 'right': '', 'font': '' }

"let g:Lf_RootMarkers = ['.project', '.root', '.svn', '.git']
"let g:Lf_WorkingDirectoryMode = 'Ac'
"let g:Lf_WindowHeight = 0.30
"let g:Lf_CacheDirectory = expand('~/.vim/cache')
"let g:Lf_ShowRelativePath = 0
"let g:Lf_HideHelp = 1
"let g:Lf_StlColorscheme = 'powerline'
"let g:Lf_PreviewResult = {'Function':0, 'BufTag':0}
" 文件搜索 fzf.vim leaderf end

"The-NERD-tree
"let NERDTreeWinPos="right"
let g:NERDTreeWinSize = 30
"let g:NERDTreeQuitOnOpen = 1
"} -- NERDTree
"Taglist{
let Tlist_Show_One_File=0
let Tlist_OnlyWindow=1
let Tlist_Use_Right_Window=0
let Tlist_Sort_Type='name'
let Tlist_Exit_OnlyWindow=1
let Tlist_Show_Menu=1
let Tlist_Max_Submenu_Items=10
"let Tlist_Max_Tag_length=20
let Tlist_Use_SingleClick=0
let Tlist_Auto_Open=0
let Tlist_Close_On_Select=0
let Tlist_File_Fold_Auto_Close=1
let Tlist_GainFocus_On_ToggleOpen=0
let Tlist_Process_File_Always=1
let Tlist_WinHeight=20
let Tlist_WinWidth=35
let Tlist_Use_Horiz_Window=0
let Tlist_Use_Split_Window = 1
"} -- Taglist
"'vim-scripts/mru.vim'{
"let MRU_Window_Height = 15
"} -- mru
"'minibufexpl {
"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1   
"let g:miniBufExplMapCTabSwitchBufs = 1   
"let g:miniBufExplModSelTarget = 1
"let g:miniBufExplMoreThanOne=0
"} -- minibufexpl end
"ctags vim-gutentags{
"map <C-F12> :!gotags -R=true  .<CR>
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS  --extras=+q .<CR>
" gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
set tags=./.tags;,.tags

" gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']

" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'

" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags

" 配置 ctags 的参数
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

" 检测 ~/.cache/tags 不存在就新建
if !isdirectory(s:vim_tags)
       silent! call mkdir(s:vim_tags, 'p')
endif
"} -- ctags, vim-gutentags, end
"cscope{
"nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>  
"map <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>  
"map <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>  
"map <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>  
"map <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>  
"map <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>  
"map <C-\>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
"map <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

"} -- cscope
"
" 异步自动补全  https://github.com/Shougo/deoplete.nvim/ 
"let g:deoplete#enable_at_startup = 1
" 异步自动补全  https://github.com/Shougo/deoplete.nvim/ end
"
"clang-complete{
"let g:clang_hl_errors=1
"let g:neocomplcache_enable_at_startup = 1
"let g:clang_complete_copen=1
"let g:clang_periodic_quickfix=0
"let g:clang_snippets=1
"let g:clang_snippets_engine = 'clang_complete'
"let g:clang_close_preview=1
"let g:clang_use_library=1
"let g:clang_library_path="/usr/lib/llvm-3.2/lib/"
"let g:clang_complete_macros = 0
"let g:clang_complete_patterns = 1
""let g:clang_auto_user_options
"let g:clang_user_options='-stdlib=libstdc++ -std=c++11 -I/usr/include -I/usr/include/c++/4.7'
"let g:clang_user_options='|| exit 0'
"} -- clang complete
"
"quck fix{
"let g:Tex_GotoError = 0
"let g:Tex_ShowErrorContext = 0
"}
"srcexpl{
"let g:SrcExpl_winHeight = 8
"let g:SrcExpl_refreshTime = 800
" // Set "Enter" key to jump into the exact definition context
"let g:SrcExpl_jumpKey = "<ENTER>"
" // Set "Space" key for back from the definition context
"let g:SrcExpl_gobackKey = "<SPACE>"
" // In order to Avoid conflicts, the Source Explorer should know what plugins
" // are using buffers. And you need add their bufname into the list below
" // according to the command ":buffers!"
"let g:SrcExpl_pluginList = [
"        \ "__Tag_List__",
"        \ "_NERD_tree_",
"        \ "ctrlp",
"        \ "Source_Explorer"
"    \ ]
"let g:SrcExpl_searchLocalDef = 1
"let g:SrcExpl_isUpdateTags = 0
" // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to
" //  create/update a tags file
"let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ."
" // Set "<F12>" key for updating the tags file artificially
"let g:SrcExpl_updateTagsKey = "<F12>"
"} -- srcexpl end
"vim air-line {
"let g:airline#extensions#tabline#enabled = 1
"} vim air-line end
"scratch {
let g:scratch_height = 5
let g:scratch_top = 0
"} scrath end
"
"vim-go {
"let g:go_highlight_functions = 1
"let g:go_highlight_methods = 1
"let g:go_highlight_fields = 1
"let g:go_highlight_types = 1
"let g:go_highlight_operators = 1
"let g:go_highlight_build_constraints = 1
"let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1
let g:go_get_update = 0
let g:go_fmt_autosave = 0
let g:go_play_open_browser = 0
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
"}
"'Blackrush/vim-gocode'{
"imap . <C-x><C-o>
"}
" SimpleAutoComplPop {
" 1. variables are all defined in current scope, use keyword from current
" buffer for completion `<C-x><C-n>`
" 2. When the '.' is pressed, use smarter omnicomplete `<C-x><C-o>`, this
" works well with the vim-go plugin
autocmd FileType go call sacp#enableForThisBuffer({ "matches": [
			\ { '=~': '\v[a-zA-Z]{4}$' , 'feedkeys': "\<C-x>\<C-n>"} ,
			\ { '=~': '\.$'            , 'feedkeys': "\<C-x>\<C-o>", "ignoreCompletionMode":1} ,
			\ ]
			\ })

autocmd FileType php,php5,php7 call sacp#enableForThisBuffer({ "matches": [
				\ { '=~': '\v[a-zA-Z]{4}$', 'feedkeys': "\<C-x>\<C-o>"},
				\ { '=~': '::$'           , 'feedkeys': "\<C-x>\<C-o>"},
				\ { '=~': '->$'           , 'feedkeys': "\<C-x>\<C-o>"},
				\ ]
				\ })
"let g:sacpEnable = 0
" }
" { -- powerline
let g:Powerline_symbols = 'fancy'
set fillchars+=stl:\ ,stlnc:\


" coc.vim ---- start
" coc.vim ---- end


" php.vim
function! PhpSyntaxOverride()
  " Put snippet overrides in this function.
  hi! link phpDocTags phpDefine
  hi! link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END
" php.vim --- end 
"

"}  -- plugin  -------------------------------------------------------
"map setting{
"normal setting{
nnoremap H {
nnoremap L }
"} -- normal seeting end
"leader ','setting {
let mapleader=","
nnoremap <leader>/ :noh<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
":x = wq
nnoremap <leader>x :x<cr> 
nnoremap <leader>aq :qall!<cr>
"close
nmap <leader>c :close<cr>
"Tab configuration
map <leader>tn :tabnew
"map <leader>te :tabedit
"map <leader>tc :tabclose<cr>
"map <leader>tm :tabmove
"for ctag
nmap <leader>nt :tn<cr>
nmap <leader>Nt :tN<cr>
" scrath
nnoremap <leader>s :Scratch<cr>
"------------pyclewn--------{
nnoremap <leader>p :Cprint <c-r>=expand("<cword>")<cr><cr>
nnoremap <leader>o :Cprint <c-r>=expand("<cword>")<cr>
nnoremap <leader>P :Cprint *<c-r>=expand("<cword>")<cr><cr>
nnoremap <leader>db :Cdisable breakpoints<cr>
nnoremap <leader>eb :Cenable breakpoints<cr>
"----} --- pyclewn end
"File buffer
"nnoremap <leader>ll :MRU<CR>
"nnoremap <leader>l :MRU
"
fun! PullAndRefresh()
  set noconfirm
  " !git pull
  bufdo e!
  set confirm
endfun
nmap <leader>ra call PullAndRefresh()
"
"
"} -- leader end
"Ctrl setting{
" tagbar replace
"inoremap <c-x> <Delete>
"Move between windows
nmap <C-h> <C-w>h
nmap <C-Left> <Esc><C-w>H
imap <C-Left> <Esc><C-w>h
nmap <C-l> <C-w>l
nmap <C-Right> <Esc><C-w>L
imap <C-Right> <Esc><C-w>l
"nmap <C-k> <C-w>k
"nmap <C-Up> <Esc><C-w>K
"imap <C-Up> <Esc><C-w>k
"nmap <C-j> <C-w>j
"nmap <C-Down> <Esc><C-w>J
"imap <C-Down> <Esc><C-w>j
"imap <C-$> <End>
"imap <C-0> <Home>
"imap <C-w> <Esc>wi
"Move in insert mode
inoremap <c-j> <down>
inoremap <c-k> <up>
inoremap <c-l> <right>
inoremap <c-h> <left>
inoremap <c-d> <Esc>ddi
"Move between tab
nmap <C-b> gT
imap <C-b> <Esc>gT
nmap <C-n> gt
"Save file
"noremap <C-s> :w!<cr>
"inoremap <C-s> <Esc>:w!<cr>
"Quit file
"nmap <C-q> :q!<cr>
"imap <C-q> :q!<cr>
"imap <c-u> <Esc>ui
"} -- Ctrl setting
"2019-09-19
"command history setting.
"nnoremap : q:i
"nnoremap / q/i
"nnoremap ? q?i
"F1-F12 setting{
"nnoremap <F2> gt
inoremap <F2> <Esc>gt
"noremap <F3> gT
inoremap <F3> <Esc>gT
noremap <F4> :w!<cr>
inoremap <F4> <Esc>:w!<cr>
nnoremap <F5> :q!<cr>
inoremap <F5> <Esc>:q!<cr>
"noremap <F10> :q!<cr>
noremap <F5> <C-O>:q!<cr>
"nnoremap <F6> :tabnew  
"inoremap <F6> <Esc>:tabnew  
"srcexpl
"nmap <F7> :SrcExplToggle<CR>
"Gundo
nnoremap <F7> :GundoToggle<CR>
inoremap <F7> <Esc>:GundoToggle<CR>
"map <F8> :TagbarToggle<CR>
"NEREDTree
nnoremap <F9> :NERDTree<CR>
nnoremap <C-F9> :NERDTreeClose<CR>
"Cancel format when parse
"nmap <leader>p :set paste<CR>
"nmap <leader>pp :set nopaste<CR>
set pastetoggle=<C-F10>
"Open cscope
map <C-F11>  :cs add /Users/hash/cscope/
"map <C-F11>  :cs add /home/hash/cscope/
"F12 has been used!
"}  -- F1-F12 setting
"}  -- map setting --
"Command{
"com NT NERDTree | TlistToggle
"} -- command
"Make the end {
"set completeopt=menu,preview,longest
set completeopt -=preview
"set completeopt -=menu
set completeopt -=longest
filetype plugin indent on
syntax on
set showcmd
"} --  the end
"
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

" for tmux vimset clipboard=unnamed


