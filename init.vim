" Initialize vim-plug
call plug#begin('~/.local/share/nvim/plugged')

" Example plugins
Plug 'preservim/nerdtree'           " File explorer
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }  " Fuzzy finder
Plug 'neoclide/coc.nvim', {'branch': 'release'}      " Intellisense via LSP
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Better syntax highlighting
Plug 'tpope/vim-fugitive'           " Git integration

call plug#end()

" General settings
set number                        " Line numbers
set tabstop=4 shiftwidth=4 expandtab " Tabs = 4 spaces
syntax on
filetype plugin indent on

" Python-specific settings
autocmd FileType python setlocal tabstop=4 shiftwidth=4 expandtab

" Coc key mappings
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <silent><expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Formatting on save (optional)
autocmd BufWritePre *.py silent! execute ':CocCommand python.sortImports'
autocmd BufWritePre *.py silent! execute ':CocCommand editor.action.formatDocument'

" JavaScript / TypeScript Treesitter and LSP
Plug 'neoclide/coc-tsserver'

" SQL Treesitter
" (Already supported by Treesitter itself, we just need to install the parser)


