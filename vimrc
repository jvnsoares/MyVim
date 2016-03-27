"patogen
execute pathogen#infect()



"some things i like
set autoindent
set number
set backspace=2

set clipboard=unnamed

"active mouse use
if has('mouse')
  set mouse=a
endif

"set tab as 4 spaces wide 
set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4 

" pathogen
let g:pathogen_disabled = [ 'pathogen' ]    " don't load self 
call pathogen#infect()                      " load everyhting else
call pathogen#helptags()                    " load plugin help files



colorscheme jellybeans
" visual
highlight Normal ctermbg=black
set background=dark
set cursorline
set t_Co=256


" syntax highlighting
syntax enable
filetype on                 " enables filetype detection
filetype plugin indent on   " enables filetype specific plugins


"crol+p

set runtimepath^=~/.vim/bundle/ctrlp.vim


"" syntastic 


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"

"let g:syntastic_python_checker="flake8"
let g:syntastic_python_checkers=['pylint','flake8']
""it makes syntastic ignore angular html tags 
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
let g:syntastic_javascript_checkers = ['jshint']
""nerdtree 

"let g:nerdtree_tabs_open_on_console_startup=1


""auto close html tags
let g:closetag_filenames = "*.html,*.xhtml,*.phtml"


let g:LustyJugglerSuppressRubyWarning = 1 
" gundo
nnoremap <F5> :GundoToggle<CR>

"split
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" lusty
set hidden
 
" pep8
let g:pep8_map='<leader>8'
 
" supertab
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview"



let g:virtualenv_directory =  '~/venv'
