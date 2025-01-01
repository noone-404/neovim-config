-- Using packer
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

use 'wbthomason/packer.nvim' -- This needs to be here otherwise packer will recommend to clean itself (issue exclusive to windows)

-- File explorer
use {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    }
}

-- Status bar
use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}

-- File search
use {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}

-- Git implementation
use 'lewis6991/gitsigns.nvim'

-- Alpha startup screen (buffer)
use {
    'goolord/alpha-nvim',
    config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
}

-- Buffer configuration (Barbar by romgrk)
-- These optional plugins should be loaded directly because of a bug in Packer lazy loading
use 'nvim-tree/nvim-web-devicons' -- OPTIONAL: for file icons
use 'tpope/vim-fugitive'
use 'romgrk/barbar.nvim'

-- Auto completion plugin Coc
use {'neoclide/coc.nvim', branch = 'release', run = "yarn install --frozen-lockfile" }

-- CMake interpretation for newovim
use 'Civitasv/cmake-tools.nvim'

-- Terminal for the environment
use 'voldikss/vim-floaterm'

-- Treesitter linter
use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
}

-- The themes
use "rebelot/kanagawa.nvim"

-- AI Plugins
use 'Exafunction/codeium.vim'

-- Tetris Game
use 'alec-gibson/nvim-tetris'

-- Minesweeper Game
use 'seandewar/nvimesweeper'

end)

-- Add more to your config if you wish

