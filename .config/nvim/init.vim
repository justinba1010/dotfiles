" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
"Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Diffurcate
Plug 'https://github.com/AndrewRadev/diffurcate.vim'

" Typescript
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

" Coffeescript
Plug 'kchmck/vim-coffee-script'

" Better Python
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Git
Plug 'tpope/vim-fugitive'

" Nerdtree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }


" Initialize plugin system
call plug#end()

"set autoindent
set expandtab
set shiftround
set shiftwidth=2
"set smarttab
set tabstop=2
set softtabstop=2
set linebreak
syntax enable
set wrap
set title
set mouse=a
set nu
set nornu
set ruler
let g:python_recommended_style = 0
let g:semshi#no_default_builtin_highlight = 0
:map <C-n> :NERDTreeToggle<cr>
map <leader>r :NERDTreeFind<cr>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>

highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)
