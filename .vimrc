" Load pathogen plugins
execute pathogen#infect()
call pathogen#helptags()

filetype off
filetype indent on
filetype plugin on
filetype plugin indent on
set nocompatible
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set smartindent
set smartcase
set gdefault " Sets the g for sustitute command to be always on
set showmatch
set matchtime=2
set guifont=MESLO\ LG\ S\ Regular\ for\ Powerline:h14
set encoding=utf-8
set cursorline
set relativenumber
set number " Show line numbers

" <leader>
let mapleader=","

" Some convenience mappings
noremap <F6> :set hlsearch! hlsearch?<CR> " Toggle search highlighting
nnoremap <leader>ef :vsplit ~/.config/fish/config.fish<CR>
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>rv :source $MYVIMRC<CR>
nnoremap <leader>h :help <C-R><C-W><CR>
nnoremap W :w<CR>
nnoremap t %
vnoremap t %
nnoremap q: :q
vnoremap yy "*y<CR>

" Solarized setup
syntax enable
set background=dark
let g:solarized_termcolors = 256
colorscheme solarized

" Enable folding
set foldmethod=indent
set foldlevel=99
set foldnestmax=3
nnoremap <space> za

" Bash Support 
let g:BASH_AuthorName   = 'Tomas Castro'
let g:BASH_Email        = 'tomas.caslo90@gmail.com'
let g:BASH_Company      = 'Cloudy Tech LLC' 

" localvimrc
let g:localvimrc_ask = 0

" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim

" CtrlP specific config
let g:ctrlp_working_path_mode = 'a'

" Add node_modules and bower_modules so ctrlp doesn't look for things there
let g:ctrlp_custom_ignore = {
	\ 'dir':  '\v[\/]((node_modules|bower_modules)|(\.(git|hg|svn)))$',
	\ 'file': '\v\.(DS_Store)$',
	\ }

" Switch pane position remaps
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" Maps Alt-[h,j,k,l] to resizing a window split
nnoremap <silent>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent>- :exe "resize " . (winheight(0) * 2/3)<CR>

" Improved window split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Moving around Vim loclists
nmap <leader>n :lnext<CR>
nmap <leader>p :lprev<CR>

" Wildmenu completion
set wildmode=longest,list,full
set wildmenu  
set wildignore=*.o,*.obj,*~
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set wildignore+=*.pyc,*.class
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" Fugitive :Gstatus
nmap <leader>g :Gstatus<CR>

" vim javascript specific config
let g:javascript_enable_domhtmlcss = 1
let g:javascript_ignore_javaScriptdoc = 1

" airline
let g:airline_theme='dark'
let g:airline_powerline_fonts = 1

" Ack config
set runtimepath^=~/.vim/bundle/ag
nnoremap <leader>agc :Ag! "<cword>"<CR>
nnoremap <leader>ag :Ag! ""<Left>

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_path_to_python_interpreter="/usr/local/bin/python"
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']

" :UltiSnipsEdit window split mode
let g:UltiSnipsEditSplit="vertical"

" EditorConfig specific
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
let g:EditorConfig_core_mode = 'external_command'

" Tsuquyomi
let g:tsuquyomi_disable_quickfix = 1

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*c
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_typescript_checkers = ['tsuquyomi'] " You shouldn't use 'tsc' checker.
let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'
let g:syntastic_always_populate_loc_list = 1 
highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

" For Hot module replacement feature. Disable 'safe write'
set backupcopy=yes

" For CamelCaseMotion
call camelcasemotion#CreateMotionMappings('<leader>')

" Bash config
au BufNewFile,BufRead *.sh
      \ set tabstop=4 |
      \ set softtabstop=4 |
      \ set shiftwidth=4 |
      \ set textwidth=79 |
      \ set noexpandtab |
      \ set autoindent |
      \ set fileformat=unix

" Python config
au BufNewFile,BufRead *.py
      \ set tabstop=4 |
      \ set softtabstop=4 |
      \ set shiftwidth=4 |
      \ set textwidth=79 |
      \ set expandtab |
      \ set autoindent |
      \ set fileformat=unix
let python_higlight_all=1

" Python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

