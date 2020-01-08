call plug#begin('~/.vim/plugged')

  Plug 'https://github.com/junegunn/vim-github-dashboard.git'
  Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
  Plug 'dense-analysis/ale'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'sheerun/vim-polyglot'
  Plug 'scrooloose/syntastic'
  Plug 'tpope/vim-surround'
  Plug 'megantiu/true.vim'
  Plug 'junegunn/limelight.vim'

call plug#end()

"shorcuts
map <C-n> :NERDTreeToggle<CR>

"airline theme
let g:airline_theme='true'

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"ale
let g:ale_sign_column_always = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:airline#extensions#ale#enabled = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

" enable 24bit true color
if (has("termguicolors"))
  set termguicolors
endif

" enable the theme
syntax enable
colorscheme true

set number
set tabstop=2
set shiftwidth=2
set expandtab
