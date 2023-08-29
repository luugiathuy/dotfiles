call plug#begin()

" Themes
Plug 'dracula/vim', { 'as': 'dracula' }

" Plugins requiring no additional configuration or keymaps
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'christoomey/vim-tmux-navigator'

" NERDTree for project drawer
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
let NERDTreeHijackNetrw = 0
nmap <leader>g :NERDTreeToggle<CR>
nmap <leader>G :NERDTreeFind<CR>

" Tagbar for navigation by tags using CTags
Plug 'preservim/tagbar'
let g:tagbar_autofocus = 1
map <Leader>rt :!ctags --extras=+f -R *<CR><CR>
map <Leader>. :TagbarToggle<CR>

" Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
au BufNewFile,BufRead *.go set filetype=go
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"

call plug#end()
