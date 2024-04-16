" Vim-Plug configuration
call plug#begin('~/.vim/plugged')

" Coc.nvim for auto-completion and LSP support
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Vim-Go for Go development
Plug 'fatih/vim-go'

"Nerdtree
Plug 'preservim/nerdtree'

" Python-Mode for Python development
Plug 'python-mode/python-mode'

" Vim-Javascript for JavaScript development
Plug 'pangloss/vim-javascript'

" Vim-JSX-Pretty for JSX and TypeScript development
Plug 'MaxMEllon/vim-jsx-pretty'

" Emmet-Vim for HTML and CSS development
Plug 'mattn/emmet-vim'

" Vim-CSS-Color for highlighting colors in CSS
Plug 'ap/vim-css-color'

call plug#end()

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Start NERDTree and put the cursor back in the other window.
"autocmd VimEnter * NERDTree | windcmd p

" Enable syntax highlighting
syntax on

" Enable filetype detection
filetype plugin indent on

" Set tabs to 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Auto-indent new lines
set autoindent
set smartindent

" Enable line numbers
set number

" Enable mouse support
set mouse=a

" Enable incremental search
set incsearch

" Enable case-insensitive search
set ignorecase
set smartcase

" Enable highlighting of search results
set hlsearch

" Enable 80 character width text wrapping
set textwidth=80
set wrap
set linebreak

" Enable spell check
set spell

" Enable auto-completion with Ctrl + Space
inoremap <silent><expr> <C-Space> coc#refresh()
inoremap <silent><expr> <CR>      pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<C-r>=coc#on_enter()\<CR>"

" Configure Go development
autocmd FileType go setlocal shiftwidth=4 tabstop=4 noexpandtab

" Configure Python development
autocmd FileType python setlocal shiftwidth=4 tabstop=4 noexpandtab

" Configure JavaScript development
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 noexpandtab

" Configure TypeScript development
autocmd FileType typescript setlocal shiftwidth=2 tabstop=2 noexpandtab

" Configure CSS development
autocmd FileType css setlocal shiftwidth=2 tabstop=2 noexpandtab

" Configure HTML development
autocmd FileType html setlocal shiftwidth=2 tabstop=2 noexpandtab

" Configure Coc.nvim for TypeScript and Python language servers
let g:coc_global_extensions = ['coc-tsserver', 'coc-python']
