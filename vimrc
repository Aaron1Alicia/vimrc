syntax on
" set color theme
"colorscheme blackboard
colorscheme desert
"colorscheme Tomorrow-Night 
set guifont=Monaco:h18
"highlight search word by Aaron
set hlsearch

set nocompatible               " be viMproved, required for vundle 
filetype off                   " required for vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"set rtp+=~/.vim/bundle/vundle/
"call vundle#rc()

" let Vundle manage Vundle
" required! 
"Plugin 'gmarik/vundle'
Plugin 'gmarik/Vundle.vim'

Plugin 'thoughtbot/vim-rspec'
Plugin 'ack.vim'
Plugin 'comments.vim'
Plugin 'ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'delimitMate.vim'
"code commenter
Plugin 'scrooloose/nerdcommenter' 
Plugin 'rspec.vim'
Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-Pluginr'
Plugin 'kchmck/vim-coffee-script'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-rails'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'briancollins/vim-jst'
Plugin 'plasticboy/vim-markdown'
Plugin 'Lokaltog/vim-powerline'
"Plugin 'vim-ruby/vim-ruby'
Plugin 'slim-template/vim-slim'
Plugin 'sudo.vim'
Plugin 'xml.vim'
Plugin 'ZenCoding.vim'
"swich from .cpp to .h 
Plugin 'a.vim'
Plugin 'ctags.vim'
Plugin 'taglist.vim'
Plugin 'winmanager'
Plugin 'Valloric/YouCompleteMe'
Plugin 'grep.vim'
Plugin 'DoxygenToolkit.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"auto completed
"RUBY
"let g:rubycomplete_buffer_loading = 1
"let g:rubycomplete_classes_in_global = 1
"let g:rubycomplete_rails = 1

"RUBY plugin
"autocmd FileType ruby compiler ruby

"autocmd vimenter * if !argc() | NERDTree | endif
"autocmd VimEnter * NER


set bsdir=buffer  
set enc=utf-8  
set fenc=utf-8  
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936  

"显示行号  
set number

"忽略大小写查找
set ic

" tab related	 
set tabstop=2  "the width of tab
set cindent shiftwidth=2  
set autoindent shiftwidth=2 


" set foldmethod manually, in which you can define which block should be fold
"set foldmethod=indent
set foldmethod=manual
" 打开文件默认不折叠
set foldlevelstart=99

"record view of last time
au BufWinLeave *.* silent mkview
au BufWinEnter *.* silent loadview

let g:vim_markdown_folding_disabled = 0


"set my leader
let mapleader=","
let g:mapleader=","

"tabs
map <leader>tn :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

"  映射NERDTree插件
":map <leader>n :NERDTree<CR>  
"let loaded_nerd_tree = 1
let NERDTreeQuitOnOpen = 1
let NERDChristmasTree=1
let g:NERDTreeWinSize = 18 
map <leader>f :NERDTreeToggle<CR>

"switch window
:map <leader>w <C-W>w

" 把 CTRL-S 映射为 保存,因为这个操作做得太习惯了  
imap <C-S> <C-C>:w<CR>  

"set zen coding
 let g:user_zen_settings = {
  \  'php' : {
  \    'extends' : 'html',
  \    'filters' : 'c',
  \  },
  \  'xml' : {
  \    'extends' : 'html',
  \  },
  \  'haml' : {
  \    'extends' : 'html',
  \  },
  \  'erb' : {
  \    'extends' : 'html',
  \  },
  \}
"set CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 2
"use in  edit
imap <C-A> <C-C><c-p>
"use in none edit
:map <leader>t <c-p>
:map <leader>b :CtrlPBuffer<CR>

" Set syntastic plugin mapping
let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_python_checkers = ['flake8']


set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.jpg,*.png,*.gif,*.jpeg,.DS_Store  " MacOSX/Linux
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

" move lines up or down (command - D)
nmap <D-j> mz:m+<cr>`z
nmap <D-k> mz:m-2<cr>`z
vmap <D-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <D-k> :m'<-2<cr>`>my`<mzgv`yo`z

" Tab move lines left or right (c-Ctrl,s-Shift)
nmap    <c-tab>     v>
nmap    <s-tab>     v<
vmap    <c-tab>     >gv
vmap    <s-tab>     <gv

" tab navigation like zsh
:nmap <D-1> :tabprevious<CR>
:map <D-1> :tabprevious<CR>
imap <D-1> <Esc>:tabprevious<CR>i

:nmap <D-2> :tabnext<CR>
:map <D-2> :tabnext<CR>
imap <D-2> <Esc>:tabnext<CR>i


"scss,sass
au BufRead,BufNewFile *.scss set filetype=scss
au BufRead,BufNewFile *.sass set filetype=scss

"coffee script
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
hi link coffeeSpaceError NONE
hi link coffeeSemicolonError NONE
hi link coffeeReservedError NONE
map <leader>cf :CoffeeCompile watch vert<cr>

"let skim use slim syntax
au BufRead,BufNewFile *.skim set filetype=slim

"ctags
set tags+=~/gitdb/rails/tags

"auto completed
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0

"Now Aaron use youcompleteme to replace omni completion

" Enable omni completion.
"autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
"if !exists('g:neocomplcache_omni_patterns')
"  let g:neocomplcache_omni_patterns = {}
"endif
"let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete


" code search
let g:ackprg = 'ag --nogroup --nocolor --column'

"set powerline
set laststatus=2 
"set guifont=Powerline
"set font=Source\ Code\ Pro\:h15
set nocompatible
set t_Co=256
let g:Powerline_cache_enabled = 1

"minitest
set completefunc=syntaxcomplete#Complete

"process past
set pastetoggle=<F2>
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>

"Aaron customized
"set gfn=Monaco:h18
if has("gui_running")
    set go=aAce              " 去掉难看的工具栏和滑动条
   " set transparency=30      " 透明背景
    set guifont=Monaco:h18   " 设置默认字体为monaco
    set showtabline=2        " 开启自带的tab栏
    set columns=140          " 设置宽
    set lines=40             " 设置长
endif
if has("win32")
set guifont=Inconsolata:h18:cANSI
endif

set confirm
map <F1> :A<CR>

"set helplang=cn
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>
syn keyword cType endl
"set tags=/home/

" YTM plug-in for vim
let g:ycm_global_ycm_extra_conf = '/Users/aaronwong/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
nnoremap <leader>gd :YcmCompleter GoToDefinitionElseDeclaration<CR>

nnoremap <silent> <F3> :Grep<CR>

"let g:EclimCompletionMethod = 'omnifunc'
let delimitMate_autoclose = 1
let delimitMate_matchpairs = "(:),[:],{:},<:>"
let delimitMate_expand_cr = 2 
let delimitMate_expand_space = 1


"setting for doxygenToolkit
let g:doxygenToolkit_authorName="Wang Yao ( Aaron Wong )"
let g:doxygenToolkit_briefTag_funcName="yes"
