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
" icon
Plug 'ryanoasis/vim-devicons'

" fzf to search files and texts in file
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <C-g> :GFiles<CR>
nnoremap <silent> <Leader>f :Rg<CR>
nnoremap <silent> <Leader>/ :BLines<CR>
nnoremap <silent> <Leader>' :Marks<CR>
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

" Running tests
Plug 'vim-test/vim-test'
Plug 'tpope/vim-dispatch'
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>v :TestVisit<CR>
let test#strategy = 'dispatch'
let test#go#ginkgo#options = '--noColor'
let g:dispatch_no_maps = 1

" Undo tree
Plug 'mbbill/undotree'
nnoremap <Leader>z :UndotreeToggle<CR>

" Formatter
Plug 'sbdchd/neoformat'
nnoremap <silent> <leader>F :Neoformat<CR>
let g:neoformat_enabled_typescript = ['prettierd']
let g:neoformat_enabled_typescriptreact = ['prettierd']
let g:neoformat_enabled_javascript = ['prettierd']
let g:neoformat_enabled_javascriptreact = ['prettierd']
let g:neoformat_enabled_ruby = ['rubocop']
" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1
augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END

" Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
au BufNewFile,BufRead *.go set filetype=go
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"

" Rails
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-rails'
map <Leader>oc :Rcontroller<Space>
map <Leader>ov :Rview<Space>
map <Leader>om :Rmodel<Space>
map <Leader>oh :Rhelper<Space>
map <Leader>oj :Rjavascript<Space>
map <Leader>os :Rstylesheet<Space>
map <Leader>oi :Rintegration<Space>

" Elixir
Plug 'elixir-editors/vim-elixir'

" JavaScript/Typescript
Plug 'pangloss/vim-javascript'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'

if has('nvim')
  " Language Server Protocol support
  Plug 'williamboman/mason.nvim'
  Plug 'williamboman/mason-lspconfig.nvim'
  Plug 'neovim/nvim-lspconfig'

  " Autocomplete
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-cmdline'
  Plug 'hrsh7th/nvim-cmp'

  " Snippet
  Plug 'hrsh7th/vim-vsnip'
  Plug 'hrsh7th/vim-vsnip-integ'
  Plug 'hrsh7th/cmp-vsnip'
  Plug 'rafamadriz/friendly-snippets'

  " Linter
  Plug 'mfussenegger/nvim-lint'

  " UI
  Plug 'folke/trouble.nvim'
  Plug 'nvim-tree/nvim-web-devicons'
  nnoremap <leader>xx <cmd>TroubleToggle<cr>
  nnoremap <leader>xw <cmd>TroubleToggle workspace_diagnostics<cr>
  nnoremap <leader>xd <cmd>TroubleToggle document_diagnostics<cr>
  nnoremap <leader>xq <cmd>TroubleToggle quickfix<cr>
  nnoremap <leader>xl <cmd>TroubleToggle loclist<cr>
  nnoremap gR <cmd>TroubleToggle lsp_references<cr>
endif

call plug#end()
