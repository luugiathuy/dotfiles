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

" Language Server Protocol support
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
let g:lsp_document_code_action_signs_delay = 200
let g:lsp_settings_filetype_ruby = 'solargraph'

" Linter
Plug 'dense-analysis/ale'
Plug 'rhysd/vim-lsp-ale'

" Autocomplete
Plug 'Shougo/ddc.vim'
Plug 'vim-denops/denops.vim'
Plug 'Shougo/ddc-ui-native'
Plug 'Shougo/ddc-source-around'
Plug 'shun/ddc-source-vim-lsp'
Plug 'matsui54/ddc-buffer'
Plug 'uga-rosa/ddc-source-vsnip'
Plug 'Shougo/ddc-matcher_head'
Plug 'Shougo/ddc-sorter_rank'

" Snippet
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'rafamadriz/friendly-snippets'

call plug#end()

" ddc.vim config
call ddc#custom#patch_global('ui', 'native')
call ddc#custom#patch_global('sources', ['vim-lsp', 'vsnip', 'around', 'buffer'])
call ddc#custom#patch_global('sourceOptions', #{
      \   _: #{
      \     matchers: ['matcher_head'],
      \     sorters: ['sorter_rank'],
      \   },
      \   vim-lsp: #{
      \     matchers: ['matcher_head'],
      \     mark: 'lsp',
      \     forceCompletionPattern: '\.\w*|:\w*|->\w*',
      \     maxItems: 10,
      \   },
      \   vsnip: #{
      \     mark: 'snippet',
      \     maxItems: 10
      \   },
      \   around: #{
      \     mark: 'around',
      \     maxItems: 5,
      \   },
      \   buffer: #{
      \     mark: 'buffer',
      \     maxItems: 5,
      \   },
      \ })

" Markdown FileType completion sources
call ddc#custom#patch_filetype('markdown', { 'sources': ['around', 'buffer'] })

inoremap <expr> <C-y> pumvisible() ? (vsnip#expandable() ? "\<Plug>(vsnip-expand)" : "\<C-y>") : "\<C-y>"
inoremap <expr> <C-Space> ddc#map#manual_complete()

" Use ddc
call ddc#enable()

" ale config
let g:airline#extensions#ale#enabled = 1
let g:ale_disable_lsp = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   'javascript': ['prettier', 'eslint'],
\   'typescript': ['prettier', 'eslint'],
\   'typescriptreact': ['prettier', 'eslint'],
\   'css': ['prettier'],
\}
