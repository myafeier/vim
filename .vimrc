set nocompatible
set backspace=indent,eol,start
syntax on
filetype plugin indent on
filetype off                                                                             
set tabstop=4  
set shiftwidth=4   
"colorscheme molokai
"set t_Co=256
"set background=dark
set expandtab                                                                            
set rtp+=~/.vim/bundle/Vundle.vim                                                         
call vundle#begin()                                                                       
Plugin 'VundleVim/Vundle.vim'                                                              
Plugin 'fatih/vim-go'                                                                     
Plugin 'scrooloose/nerdtree'                                                             
Plugin 'Valloric/YouCompleteMe'                                                           
Plugin 'dgryski/vim-godef'
Plugin 'majutsushi/tagbar'
Plugin 'SirVer/ultisnips'
Plugin 'posva/vim-vue'
call vundle#end()                                                                         
filetype plugin indent on                                                                
let mapleader=";"                                                     
map <leader>n :NERDTreeToggle<CR>                                                         
nmap <leader>t :TagbarToggle<CR>

"打开文件自动 打开tagbar  
autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx,*.go,*.ts call tagbar#autoopen()

let g:go_fmt_command = "goimports"                                                       
let g:Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8_1/bin/ctags'
"let g:tagbar_ctags_bin='/usr/bin/ctags'
let g:go_highlight_functions = 1                                                         
let g:go_highlight_methods = 1                                                           
let g:go_highlight_structs = 1                                                          

let g:ycm_add_preview_to_completeopt = 0                                                 
let g:ycm_min_num_of_chars_for_completion = 1                                             
let g:ycm_auto_trigger = 1                                                               
let g:ycm_key_list_select_completion = ['', '']
let g:ycm_key_list_previous_completion = ['']
let g:ycm_key_invoke_completion = ''

" UltiSnips setting
"let g:UltiSnipsExpandTrigger=""
"let g:UltiSnipsJumpForwardTrigger=""
"let g:UltiSnipsJumpBackwardTrigger=""

let g:godef_same_file_in_same_window=1 
let g:godef_split=3
let g:tagbar_width = 30
let g:tagbar_autopreview = 1
let g:tagbar_sort = 0
let g:molokai_original = 1
let g:rehash256 = 1

set completeopt-=preview
set mouse=a 
"括号自动补全
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap < <><ESC>i
function! g:UltiSnips_Complete()
  call UltiSnips#ExpandSnippet()
  if g:ulti_expand_res == 0
    if pumvisible()
      return "\<C-n>"
    else
      call UltiSnips#JumpForwards()
      if g:ulti_jump_forwards_res == 0
        return "\<TAB>"
      endif
    endif
  endif
  return ""
endfunction

function! g:UltiSnips_Reverse()
  call UltiSnips#JumpBackwards()
  if g:ulti_jump_backwards_res == 0
    return "\<C-P>"
  endif

  return ""
endfunction


if !exists("g:UltiSnipsJumpForwardTrigger")
  let g:UltiSnipsJumpForwardTrigger = "<tab>"
endif
if !exists("g:UltiSnipsJumpBackwardTrigger")
  let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
endif


au InsertEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger     . " <C-R>=g:UltiSnips_Complete()<cr>"
au InsertEnter * exec "inoremap <silent> " .     g:UltiSnipsJumpBackwardTrigger . " <C-R>=g:UltiSnips_Reverse()<cr>"
au BufRead,BufNewFile *.wpy setlocal filetype=vue.html.javascript.css
