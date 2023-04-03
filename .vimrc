if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release', 'tag':'v0.0.80'}
Plug 'vim/killersheep'
" Plug 'dart-lang/dart-vim-plugin'
" for golang 
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'SirVer/ultisnips'
" end 
Plug 'NLKNguyen/papercolor-theme'
Plug 'mattn/emmet-vim'
Plug 'digitaltoad/vim-pug'
Plug 'Yggdroot/indentLine'
Plug 'luochen1990/rainbow'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-scripts/ctags.vim'
Plug 'majutsushi/tagbar'
Plug 'dNitro/vim-pug-complete', { 'for': ['jade', 'pug'] }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'iamcco/markdown-preview.vim'
Plug 'godlygeek/tabular'
Plug 'scrooloose/nerdcommenter'
Plug 'iamcco/markdown-preview.vim'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'neoclide/coc-prettier', {'do': 'yarn install --frozen-lockfile'}

"Plug 'akretion/vim-odoo-snippets"


call plug#end()


set background=dark
"set background=light

set clipboard=unnamedplus

set noswapfile

let &termencoding=&encoding
set fileencodings=utf-8,gbk

set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set enc=utf8
set fencs=utf8,gbk,gb2312,gb18030

set helplang=cn "显示中文帮助
set mouse=a
set clipboard=autoselect

set hlsearch "搜索结果高亮显示


syntax on "开启语法高亮
set autoread " 设置当文件被改动时自动载入
set cul "高亮光标所在行
set cuc "高亮所在列
set autowrite "自动保存
set scrolloff=3     " 光标移动到buffer的顶部和底部时保持3行距离  
set showmatch  " 括弧匹配

set laststatus=2 "1为关闭底部状态栏 2为开启"
set t_Co=256     "终端开启256色支持"

" 默认缩进设置
set autoindent
set smartindent " 开启新行时使用智能自动缩进
set softtabstop=4 "使得按退格键时可以一次删掉 4 个空格
set tabstop=4  "设定 tab 长度为 4
set shiftwidth=4
set t_ut=  "防止vim背景颜色错误

"autocmd FileType vue syntax sync fromstart
set ambiwidth=double " 设置为双字宽显示，否则无法完整显示如:☆
set t_ut= " 防止vim背景颜色错误
set showmatch " 高亮匹配括号

" settings
"
let mapleader=";"
set number
set backspace=2  "把 delete 键配置成增强模式
set nocompatible  "去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限
set helplang=cn
set encoding=utf-8


set cindent
" Tab键的宽度
" 使用空格代替制表符
set expandtab
" 在行和段开始处使用制表符
set smarttab


" 侦测文件类型
filetype on
" 载入文件类型插件
filetype plugin on
" 为特定文件类型载入相关缩进文件
filetype indent on




" 分类宽度调整快捷键
"map <up> :res +5<CR>
"map <down> :res -5<CR>
"map <left> :vertical resize-5<CR>
"map <right> :vertical resize+5<CR>



" 设置 laststatus = 0 ，不显式状态行
" 设置 laststatus = 1 ，仅当窗口多于一个时，显示状态行
" 设置 laststatus = 2 ，总是显式状态行
set laststatus=2 

nmap <C-Up> :vertical resize +10<CR> "扩大当前frame宽度
nmap <C-Down> :vertical resize -10<CR> "减少当前frame宽度

nmap <c-a> ggVG
vmap <C-c> "+y
"imap <C-v> <Esc>"*pa 原来的写法
imap <C-v> <Esc>"+p

" for mac use system clipboard
" =====================
vnoremap <C-y> :w !pbcopy<CR><CR>
nmap <C-p> :r !pbpaste<CR><CR>
" =====================

imap jk <ESC>

au BufNewFile,BufRead *.html,*.js,*.yaml,*.vue,*.md 
\ set tabstop=2 |
\ set softtabstop=2 |
\ set shiftwidth=2 |
\ set expandtab |
\ set autoindent |
\ set fileformat=unix |

au BufNewFile,BufRead *.php,*.conf 
\ set tabstop=4 |
\ set softtabstop=4 |
\ set shiftwidth=4 |
\ set expandtab |
\ set autoindent |
\ set fileformat=unix |


" scheme
" ==================================                                     
"
colorscheme PaperColor

" vim-translator                         
" ==================================                                     
" 在窗口中显示翻译                                                            
"
nmap <silent> <Leader>t <Plug>Translate      
vmap <silent> <Leader>t <Plug>TranslateV
" 将文字替换为翻译             
nmap <silent> <Leader>r <Plug>TranslateR
" 翻译剪贴板中的文字                                                                                     
nmap <silent> <Leader>X <Plug>TranslateX


" indentLine 
" ====================================
"
let g:indentLine_color_term = 239
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)
let g:vim_json_syntax_conceal = 1 "" 为了防止导致json的引号自动隐藏
let g:indentLine_noConcealCursor=""  " 为了防止导致json的引号自动隐藏




" tagbar 
" ===========================================
"
" p             Jump to the tag under the cursor, but stay in the Tagbar window.
" P             Open the tag in a |preview-window|
"  o/za          Toggle the fold under the cursor or the current one if there is no fold under the cursor.
"  */zR          Open all folds by setting foldlevel to 99
"  =/zM          Close all folds by setting foldlevel to 0.

nnoremap <silent> <F4> :TagbarToggle<CR> " 将tagbar的开关按键设置为 F4"

" ultisnips config
" ===========================================
"
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" netrw confing
" ===============================================
"
let g:netrw_liststyle = 4
let g:netrw_banner = 0
let g:netrw_winsize = 25
"用水平拆分窗口打开文件
"用垂直拆分窗口打开文件
"用新建标签页打开文件
"用前一个窗口打开文件
"
"let g:netrw_browse_split =2



" config of coc.nvim
" ===============================================================================

let g:coc_global_extensions = ['coc-tsserver','coc-html','coc-css', 'coc-json','coc-yaml','coc-vetur','coc-eslint','coc-xml','coc-phpls', 'coc-markdownlint','coc-highlight']


" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
" set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
"inoremap <silent><expr> <TAB>
"      \ pumvisible() ? "\<C-n>" :
"      \ <SID>check_back_space() ? "\<TAB>" :
"      \ coc#refresh()
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

"function! s:check_back_space() abort
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~# '\s'
"endfunction

" Use <c-space> to trigger completion.
"inoremap <silent><expr> <cr> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
"if has('patch8.1.1068')
  " Use `complete_info` if your (Neo)Vim version supports it.
"  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
"else
"  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"
  inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
  inoremap <silent><expr> <C-x><C-z> coc#pum#visible() ? coc#pum#stop() : "\<C-x>\<C-z>"
  " remap for complete to use tab and <cr>
  inoremap <silent><expr> <TAB>
        \ coc#pum#visible() ? coc#pum#next(1):
        \ <SID>check_back_space() ? "\<Tab>" :
        \ coc#refresh()
  inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
  inoremap <silent><expr> <c-space> coc#refresh()

  hi CocSearch ctermfg=12 guifg=#18A3FF
  hi CocMenuSel ctermbg=109 guibg=#13354A

"
"endif" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json,go,css,less,sass,html,php,python,xml,wxml,wxss,vue setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
"nmap <silent> <TAB> <Plug>(coc-range-select)
"xmap <silent> <TAB> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>


" for vim-go
" ==================================
"
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']"

let g:go_highlight_types = 1
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
"autocmd FileType go nmap <Leader>tj :GoAddTags<cr>
"autocmd FileType go nmap <Leader>i <Plug>(go-info)
"autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')



  " emmet
  " ==============================
  "
  let g:user_emmet_settings = {
  \ 'wxss': {
  \   'extends': 'css',
  \ },
  \ 'wxml': {
  \   'extends': 'html',
  \   'aliases': {
  \     'div': 'view',
  \     'span': 'text',
  \   },
  \  'default_attributes': {
  \     'block': [{'wx:for-items': '{{list}}','wx:for-item': '{{item}}'}],
  \     'navigator': [{'url': '', 'redirect': 'false'}],
  \     'scroll-view': [{'bindscroll': ''}],
  \     'swiper': [{'autoplay': 'false', 'current': '0'}],
  \     'icon': [{'type': 'success', 'size': '23'}],
  \     'progress': [{'precent': '0'}],
  \     'button': [{'size': 'default'}],
  \     'checkbox-group': [{'bindchange': ''}],
  \     'checkbox': [{'value': '', 'checked': ''}],
  \     'form': [{'bindsubmit': ''}],
  \     'input': [{'type': 'text'}],
  \     'label': [{'for': ''}],
  \     'picker': [{'bindchange': ''}],
  \     'radio-group': [{'bindchange': ''}],
  \     'radio': [{'checked': ''}],
  \     'switch': [{'checked': ''}],
  \     'slider': [{'value': ''}],
  \     'action-sheet': [{'bindchange': ''}],
  \     'modal': [{'title': ''}],
  \     'loading': [{'bindchange': ''}],
  \     'toast': [{'duration': '1500'}],
  \     'audio': [{'src': ''}],
  \     'video': [{'src': ''}],
  \     'image': [{'src': '', 'mode': 'scaleToFill'}],
  \   }
  \ },
  \}

" emmet-vim
" ===================================================
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall


" rainbow
" ===============================================
"
let g:rainbow_active = 1
let g:rainbow_conf = {
\   'guifgs': ['darkorange3', 'seagreen3', 'royalblue3', 'firebrick'],
\   'ctermfgs': ['lightyellow', 'lightcyan','lightblue', 'lightmagenta'],
\   'operators': '_,_',
\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\   'separately': {
\       '*': {},
\       'tex': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\       },
\       'lisp': {
\           'guifgs': ['darkorange3', 'seagreen3', 'royalblue3', 'firebrick'],
\       },
\       'vim': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\       },
\       'html': {
\           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\       },
\       'css': 0,
\   }
\}

" ===========nerdcommenter==============
" add spaces after comment delimiters by default
" <leader>cc   加注释
" <leader>cu   解开注释
" <leader>c<space>  加上/解开注释, 智能判断
" <leader>cy   先复制, 再注解(p可以进行黏贴)
"
let g:NERDSpaceDelims = 1
" python 自动的会多加一个空格
au FileType python let g:NERDSpaceDelims = 0

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
" let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1


"inoremap <silent><expr> <TAB>
"      \ pumvisible() ? coc#_select_confirm() :
"      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
"      \ <SID>check_back_space() ? "\<TAB>" :
"      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'


" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)

" 使用空格键关闭当前打开的折叠，或者打开当前关闭的折叠
nnoremap <space> za


" for coc-golang
" =======================================================
"
autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')
"autocmd FileType go nmap <Leader>tj :CocCommand go.tags.add json<cr>
autocmd FileType go nmap <Leader>ty :CocCommand go.tags.add yaml<cr>
autocmd FileType go nmap <Leader>tx :CocCommand go.tags.add xorm<cr>
autocmd FileType go nmap <Leader>tb :CocCommand go.tags.add bson<cr>
autocmd FileType go nmap <Leader>tc :CocCommand go.tags.clear<cr>
autocmd FileType go nmap <Leader>tlj :CocCommand go.tags.add.line json<cr>

" for MarkdownPreview
" =======================================================
"
let g:mkdp_path_to_chrome="/usr/bin/google-chrome-stable"
let g:mkdp_auto_close=0
nmap <F7> <Plug>MarkdownPreview
nmap <F8> <Plug>StopMarkdownPreview


" for airline
" =======================================================
"
" 设置状态栏
let g:airline_theme = 'desertink'  " 主题

let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'
let g:airline#extensions#keymap#enabled = 0

let g:airline#extensions#tabline#enabled = 0
"let g:airline#extensions#tabline#left_sep = '>'
"let g:airline#extensions#tabline#left_alt_sep = '>'
"let g:airline#extensions#tabline#buffer_nr_show = 0
"let g:airline#extensions#tabline#formatter = 'default'
"
"let g:airline#extensions#tabline#buffer_idx_mode = 0
"let g:airline#extensions#tabline#buffer_idx_format = {
"       \ '0': '0 ',
"       \ '1': '1 ',
"       \ '2': '2 ',
"       \ '3': '3 ',
"       \ '4': '4 ',
"       \ '5': '5 ',
"       \ '6': '6 ',
"       \ '7': '7 ',
"       \ '8': '8 ',
"       \ '9': '9 '
"       \}
" 设置切换tab的快捷键 <\> + <i> 切换到第i个 tab
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
" 设置切换tab的快捷键 <\> + <-> 切换到前一个 tab
"nmap gT <Plug>AirlineSelectPrevTab
" 设置切换tab的快捷键 <\> + <+> 切换到后一个 tab
" nmap gt <Plug>AirlineSelectNextTab
" 设置切换tab的快捷键 <\> + <q> 退出当前的 tab
"nmap <leader>q :bp<cr>:bd #<cr>
" 修改了一些个人不喜欢的字符
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.linenr = "CL" " current line
let g:airline_symbols.whitespace = '|'
let g:airline_symbols.maxlinenr = 'Ml' "maxline
let g:airline_symbols.branch = 'BR'
let g:airline_symbols.readonly = "RO"
let g:airline_symbols.dirty = "DT"
let g:airline_symbols.crypt = "CR"
