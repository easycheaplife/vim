filetype plugin indent on

set smartindent
set autowrite
set enc=utf-8
set backspace=indent,eol,start

set fileencodings=utf-8,gbk,ucs-bom,cp936,latin1,big5,utf-16

set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8

set nowrap
set backspace=indent,eol,start
set nobackup
set showcmd
set sts=4
set autoindent
set history=1000
set incsearch
set laststatus=2
set matchtime=2
set hlsearch
set ruler


set scrolloff=10
set showmatch
set showcmd
set tabstop=4
set softtabstop=4

"map <silent> bu :w<cr>:!sh build.sh  <cr>
"map <silent> bb :w<cr>:!sh svn.sh <esc>
"map <silent> bn :w<cr>:! ~/php/bin/php http.php <esc>

map <F9> O/*<CR>@brief: <CR>@date:[<Esc>:read !date <CR>kJ$a]<CR>@author: wuyanfei<CR>@param: <CR>@return: <CR>/<ESC><s-i><backspace><ESC>

au BufRead * set whichwrap=<,>,h,l
au BufRead,bufNewFile * set nobackup

au BufRead,bufNewFile *.inc  set filetype=html.javascript
au BufRead,bufNewFile *.tpl  set filetype=html.javascript
au BufRead,bufNewFile *.html set filetype=html.javascript
au BufRead,bufNewFile *.php set filetype=php
au BufRead,bufNewFile *.java set filetype=java

nmap q :q!

nmap <silent> ( 5<c-w><
nmap <silent> ) 5<c-w>>
nmap <silent> - 10<c-w>-
nmap <silent> = 10<c-w>+
nmap <c-j> <c-w>j
nmap <c-k> <c-w>k
nmap <c-h> <c-w>h
imap <silent> <c-w> <esc>:w<cr>
nmap <c-p> <s-o><esc>jo<esc>h

nmap <silent> <s-s> <esc>:w<cr>
nmap <silent> ee zR
nmap cp yaw
nmap p <s-p>

set nocp
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

""""""""
" ctags
"""""""""
let generate_tags=1
let g:ctags_title=1
let g:ctags_statusline=1
set tags=tags;

""""""""
" taglist
""""""""
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
map <c-x> :Tlist<cr>

""""""""""""""""
"winManager
""""""""""""""""
let g:winManagerWindowLayout = "BufExplorer,FileExplorer|TagList"
let g:winManagerWidth = 30
let g:defaultExplorer = 0
map wm :WMToggle<cr>
map <c-w><c-t> :WMToggle<cr>
map <tab> <c-w><c-w>
map tp :tabp<cr>
map tn :tabn<cr>
map tt <c-t>
map ff <c-]>
set clipboard+=unnamed
set novisualbell

""""""""""""""""""""""""""""
" NERDTree
""""""""""""""""""""""""""""
map nd :NERDTree
map nc :NERDTreeClose



""""""""""""""""""""""""""""""
" netrw setting
""""""""""""""""""""""""""""""
let g:netrw_winsize = 30
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")|execute("normal `\"")|endif
vnoremap < <gv
vnoremap > >gv 

colorscheme koehler

"set foldmethod=marker
"set foldmethod=indent
"set foldmethod=manual

set formatoptions+=tcrqvmMB

nmap <silent> <F6> :set number!<CR>
nmap <silent> <F8> :set nowrap!<CR>
nmap <HOME> ^i
imap <HOME> <ESC>^i

set nu
syntax on
set shiftwidth=4

map ft :call FormatCode()<CR>
    func! FormatCode()
        exec "w" 
        if &filetype == 'C' || &filetype == 'h' 
            exec "!astyle --style=google %"
        elseif &filetype == 'cpp' || &filetype == 'cc'
            exec "!astyle --style=google %"    
            return
        endif
    endfunc

