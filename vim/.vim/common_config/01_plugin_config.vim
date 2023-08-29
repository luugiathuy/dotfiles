call plug#begin()
  " Themes
  Plug 'dracula/vim', { 'as': 'dracula' }

  " Plugins requiring no additional configuration or keymaps
  Plug 'tpope/vim-endwise'
  Plug 'tpope/vim-fugitive'

  " NERDTree for project drawer
  Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
    let NERDTreeHijackNetrw = 0
    nmap <leader>g :NERDTreeToggle<CR>
    nmap <leader>G :NERDTreeFind<CR>

call plug#end()