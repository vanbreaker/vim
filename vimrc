let mapleader=","
let g:mapleader=","

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'majutsushi/tagbar'
nmap <Leader>tb :TagbarToggle<CR>        "快捷键设置
let g:tagbar_ctags_bin='ctags'            "ctags程序的路径
let g:tagbar_width=30                    "窗口宽度的设置
map <F3> :Tagbar<CR>


Bundle 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>' 
let g:ctrlp_cmd = 'CtrlP'
" 设置过滤不进行查找的后缀名 
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|pyc|o)$' 

Bundle 'bling/vim-airline'
let g:airline_powerline_fonts = 1

Bundle 'Valloric/YouCompleteMe'
" 设置跳转到方法/函数定义的快捷键 
"nnoremap <leader>j :YcmCompleter GoToDefinitionElseDeclaration<CR> 
" 触发补全快捷键 
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_key_list_select_completion = ['<TAB>', '<c-n>', '<Down>'] 
let g:ycm_key_list_previous_completion = ['<S-TAB>', '<c-p>', '<Up>'] 
let g:ycm_auto_trigger = 1 
let g:ycm_confirm_extra_conf=1
"let g:ycm_error_symbol = '>>'
"let g:ycm_warning_symbol = '>*'
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
set completeopt-=preview 

Bundle 'Lokaltog/vim-easymotion'
let g:EasyMotion_smartcase = 1
let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
map <Leader>e <Plug>(easymotion-bd-e)
map <Leader>w <Plug>(easymotion-bd-w)
map <Leader>h <Plug>(easymotion-linebackward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>. <Plug>(easymotion-repeat)
map <Leader>f <Plug>(easymotion-s)
map <Leader>s <Plug>(easymotion-f)


Bundle 'vim-scripts/a.vim'
Bundle 'scrooloose/nerdcommenter'

Bundle 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

Bundle 'vim-syntastic/syntastic'
set statusline+=%#warningmsg#
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

Bundle 'junegunn/vim-easy-align'
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <alt-l> <C-W>l

syntax enable
set t_Co=256

"set background=dark
"colorscheme solarized
"let g:solarized_termcolors=256
colorscheme Tomorrow-Night-Eighties
set number
set helplang=cn
set ai      
set bs=2
set showmatch
set autoread

:filetype plugin indent on

set ts=4
set smartindent
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set shiftround


set syntax =on
set autoindent
set cindent

set cursorline
set hls
set showmode

map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>


set fencs=utf-8,gbk
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936,latin1
set termencoding=utf-8



inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {<CR>}<ESC>O

func SkipPair()
    if getline('.')[col('.') - 1] == ')' || getline('.')[col('.') - 1] == ']' || getline('.')[col('.') - 1] == '"' || getline('.')[col('.') - 1] == "'" || getline('.')[col('.') - 1] == '}'
        return "\<ESC>la"
    else
        return "\t"
    endif
endfunc
" 将tab键绑定为跳出括号
inoremap <TAB> <c-r>=SkipPair()<CR>
