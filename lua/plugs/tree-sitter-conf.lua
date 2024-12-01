-----------------------------------------------------------
-- Treesitter configuration file
----------------------------------------------------------

-- Plugin: nvim-treesitter
-- URL: https://github.com/nvim-treesitter/nvim-treesitter
-- Reference URL: https://github.com/brainfucksec/neovim-lua/blob/main/nvim/lua/plugins/nvim-treesitter.lua

local status_ok, nvim_treesitter = pcall(require, 'nvim-treesitter.configs')
if not status_ok then
  return
end

-- See: https://github.com/nvim-treesitter/nvim-treesitter#quickstart
nvim_treesitter.setup {
  -- A list of parser names, or "all"
  -- See: `TSInstallInfo` commmand
  ensure_installed = {
    'bash', 'c', 'c_sharp', 'cmake', 'cpp', 'json', 
    'lua', 'make', 'python', 'rust', 'toml', 'vim',
  },
  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,
  highlight = {
    -- `false` will disable the whole extension
    enable = true,
  },
}

