" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
" Make sure you use single quotes
call plug#begin(g:nvim_home . '/plugged')

"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'ompugao/vim-airline-datetime'
Plug 'itchyny/lightline.vim'
Plug 'niklaas/lightline-gitdiff'
Plug 'sainnhe/gruvbox-material'

Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'
Plug 'skywind3000/vim-terminal-help'

Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'Chiel92/vim-autoformat'
Plug 'mg979/vim-visual-multi'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'tpope/vim-commentary'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"Plug 'hrsh7th/vim-vsnip'
"Plug 'hrsh7th/vim-vsnip-integ'

"Plug 'preservim/nerdtree'
Plug 'kyazdani42/nvim-tree.lua'
"if has('nvim')
"  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
"else
"  Plug 'Shougo/defx.nvim'
"  Plug 'roxma/nvim-yarp'
"  Plug 'roxma/vim-hug-neovim-rpc'
"endif


Plug 'tpope/vim-fugitive'
Plug 'jceb/vim-orgmode'
Plug 'tpope/vim-speeddating'
Plug 'thaerkh/vim-workspace'

if g:nvim_preset == 'core'
  Plug 'Yggdroot/LeaderF'
else
  Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension'  }
endif

Plug 'puremourning/vimspector'

Plug 'nvim-lua/plenary.nvim'
Plug 'rafcamlet/nvim-luapad'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/lsp-status.nvim'
Plug 'nvim-lua/lsp_extensions.nvim'
Plug 'nvim-lua/completion-nvim'

Plug 'johngrib/vim-game-snake'

call plug#end()

