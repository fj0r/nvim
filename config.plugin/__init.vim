" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
" Make sure you use single quotes
"
call plug#begin(g:nvim_plugged)


"Plug 'sainnhe/gruvbox-material'

Plug 'norcalli/nvim.lua'
Plug 'norcalli/nvim-base16.lua'
"Plug 'rktjmp/lush.nvim'
Plug 'norcalli/nvim-colorizer.lua'

"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'ompugao/vim-airline-datetime'
"Plug 'itchyny/lightline.vim'
"Plug 'niklaas/lightline-gitdiff'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
Plug 't9md/vim-choosewin'

Plug 'skywind3000/asyncrun.vim'
Plug 'skywind3000/asynctasks.vim'
Plug 'GustavoKatel/telescope-asynctasks.nvim'

Plug 'akinsho/nvim-toggleterm.lua'
"Plug 'skywind3000/vim-terminal-help'
"Plug 'kassio/neoterm'

"Plug 't9md/vim-smalls'
Plug 'justinmk/vim-sneak'
Plug 'chaoren/vim-wordmotion'
"Plug 'easymotion/vim-easymotion'
Plug 'mg979/vim-visual-multi'

"Plug 'jiangmiao/auto-pairs'
Plug 'windwp/nvim-autopairs'
Plug 'junegunn/vim-easy-align'
Plug 'Chiel92/vim-autoformat'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'tpope/vim-commentary'

"Plug 'matze/vim-move'
Plug 'wellle/targets.vim'
"Plug 'machakann/vim-sandwich'
Plug 'tpope/vim-surround'
Plug 'machakann/vim-swap'

Plug 'hrsh7th/nvim-compe'
"Plug 'norcalli/snippets.nvim'
Plug 'hrsh7th/vim-vsnip'
"Plug 'hrsh7th/vim-vsnip-integ'
"Plug 'SirVer/ultisnips'

Plug 'tpope/vim-fugitive'
"Plug 'mbbill/undotree'
Plug 'simnalamburt/vim-mundo'
"Plug 'jceb/vim-orgmode'
"Plug 'tpope/vim-speeddating'

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'TC72/telescope-tele-tabby.nvim'


Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'kyazdani42/nvim-tree.lua'
Plug 'neovim/nvim-lspconfig'
"Plug 'kabouzeid/nvim-lspinstall'
"Plug 'nvim-lua/lsp-status.nvim'
"Plug 'nvim-lua/lsp_extensions.nvim'

Plug 'rmagatti/auto-session'
"Plug 'thaerkh/vim-workspace'

"Plug 'puremourning/vimspector'
Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'
Plug 'theHamsta/nvim-dap-virtual-text'

Plug 'nanotee/sqls.nvim'
Plug 'chr4/nginx.vim'
"Plug 'keith/swift.vim'
Plug 'ojroques/vim-oscyank'

if g:nvim_preset != 'core'
  Plug 'rafcamlet/nvim-luapad'
endif
"Plug 'johngrib/vim-game-snake'

call plug#end()

