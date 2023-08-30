call plug#begin()

" Plugins requiring no additional configuration or keymaps
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'christoomey/vim-tmux-navigator'
Plug 'airblade/vim-gitgutter'

" NERDTree for project drawer
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
let NERDTreeHijackNetrw = 0
nmap <leader>g :NERDTreeToggle<CR>
nmap <leader>G :NERDTreeFind<CR>

" fzf to search files and texts in file
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <C-f> :GFiles<CR>
nnoremap <silent> <Leader>f :Rg<CR>
nnoremap <silent> <Leader>/ :BLines<CR>
nnoremap <silent> <Leader>' :Marks<CR>
nnoremap <silent> <Leader>g :Commits<CR>
nnoremap <silent> <Leader>hh :History<CR>
nnoremap <silent> <Leader>h: :History:<CR>
nnoremap <silent> <Leader>h/ :History/<CR>

" Lean status/tabline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1
let g:airline_mode_map = {
      \ '__' : '-',
      \ 'n'  : 'N',
      \ 'i'  : 'I',
      \ 'R'  : 'R',
      \ 'c'  : 'C',
      \ 'v'  : 'V',
      \ 'V'  : 'V',
      \ '' : 'V',
      \ 's'  : 'S',
      \ 'S'  : 'S',
      \ '' : 'S',
      \ }

" Tagbar for navigation by tags using CTags
Plug 'preservim/tagbar'
let g:tagbar_autofocus = 1
map <Leader>rt :!ctags --extras=+f -R *<CR><CR>
map <Leader>. :TagbarToggle<CR>

" Surround for adding surround 'physics'
Plug 'tpope/vim-surround'
" # to surround with ruby string interpolation
let g:surround_35 = "#{\r}"
" - to surround with no-output erb tag
let g:surround_45 = "<% \r %>"
" = to surround with output erb tag
let g:surround_61 = "<%= \r %>"

" Highlight choices
Plug 'easymotion/vim-easymotion'

" Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
au BufNewFile,BufRead *.go set filetype=go
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"

" Elixir
Plug 'elixir-editors/vim-elixir'

call plug#end()
