set nocompatible
filetype off    " Required
filetype indent on
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set smartindent
set smartcase
set gdefault
set showmatch
set matchtime=2
set guifont=MESLO\ LG\ S\ Regular\ for\ Powerline:h14

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'
Plugin 'valloric/youcompleteme'

" Some settings to enable the theme:
set relativenumber
set number " Show line numbers
syntax enable
set background=dark
let g:solarized_termcolors = 256
colorscheme solarized

" <leader>
let mapleader=","

filetype plugin on
filetype plugin indent on " Required
execute pathogen#infect()
call pathogen#helptags()

" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim

" CtrlP specific config
let g:ctrlp_working_path_mode = 'a'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip " MacOSX/Linux
" add node_modules and bower_modules so ctrlp doesn't look for things there
let g:ctrlp_custom_ignore = {
	\ 'dir':  '\v[\/]((node_modules|bower_modules)|(\.(git|hg|svn)))$',
	\ 'file': '\v\.(DS_Store)$',
	\ }

" Switch pane position remaps
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" Wildmenu completion
set wildmode=longest,list,full
set wildmenu  
set wildignore=*.o,*.obj,*~
set wildignore+=*.swp,*.pyc,*.class
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
nnoremap <leader>agc :Ag! "<cword>"<cr>
nnoremap <leader>ag :Ag! ""<C-Left><Left>

" make YCM compatible with UltiSnips (using supertab)
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
highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

" For Hot module replacement feature. Disable 'safe write'
set backupcopy=yes

" For CamelCaseMotion
call camelcasemotion#CreateMotionMappings('<leader>')
