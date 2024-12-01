# Neovim-Config

My configuration that uses packer, it's created for personal use. 
Inspired by "brainfucksec" 
The config files can be found [here](https://github.com/brainfucksec/neovim-lua)

# Requirements

It is recommended to have the latest version of neovim possible

This configuration works with [packer](https://github.com/wbthomason/packer.nvim?tab=readme-ov-file#quickstart). Ensure you have it installed on your system before continuing

It also has the plugins:

-- [coc](https://github.com/neoclide/coc.nvim) which requires nodejs >= 16.18.0 and npm

and

-- [codeium](https://github.com/Exafunction/codeium.nvim) which requires you to login to a codeium account

# Setup

Before starting make sure you have a backup of your already existing configuration if you have one

After that to set it up you can clone it with git on your neovim configuration like this:

For Linux (And probably MacOS)
```bash
git clone https://github.com/noone-404/neovim-config.git ~/.config/nvim
```

For Windows:
```powershell
git clone https://github.com/noone-404/neovim-config.git $HOME\AppData\Local\nvim
```

Open neovim and continue to press enter to ignore all the errors and warnings, after you are in type:
```bash
:PackerInstall
```
and simply wait for it to be installed.

If some packages are not installed open neovim and press the same command.

Also if you want to use this for c and c++ development then insure you have "coc" installed, make it see such file and press
```bash
:CocCommand clangd.install
```
then wait for a few seconds

# Plugins and Keybindings

The Keybindings are accesible to change in the "keymaps.lua" file

**You can switch between windows with:**

* control+h: on the left

* control+l: on the right

* control+j: for going down

* control+k: for going up

**You can handle tabs with:**

* control+t: To create a new tab

* control+x: To close the current tab

* alt+rightarrow: To move to the next one

* alt+leftarrow: To move to the previous one

**Other stuff:**

* control+s: Save current file

* space+w: Save all buffer changes

* control+q: Quit neovim buffer

* space+q: Quit neovim as a whole

**The Plugins that are being used are:**

-- [Neo-Tree](https://github.com/nvim-neo-tree/neo-tree.nvim) -- under the plugs/neo-nvim.lua file

Used to have a hierarchy of the project

shortcuts:

* Control+C: Toggle tree on the right (Can be changes through the file)

-- [Telescope](https://github.com/nvim-telescope/telescope.nvim) -- currently no configuration file

Makes your life easier while trying to find files and other useful stuff

shortcuts:

* control+f: To find a specific file

* control+b: Find a specific buffer (tab)

* control+g: Something with live_grep

-- [Floaterm](https://github.com/voldikss/vim-floaterm) -- under the plugs/floaterm.lua file

Used as an in-editor terminal

shortcuts:

* control+p: Toggle the terminal (floating mode)

* space+h: Toggle the terminal (Horizontal mode)

* space+v: Toggle the terminal (Vertical mode)

* Escape while having it toggled to escape

-- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter) -- under the plugs/tree-sitter.lua file

Used as a linter

-- [Barbar](https://github.com/romgrk/barbar.nvim) -- under the plugs/barbar.lua file

Used to make tabs and overall buffers 

-- [Lualine](https://github.com/nvim-lualine/lualine.nvim) -- under the plugs/lualine.lua
The status bar of neovim. Heavily inspired by "brainfucksec" over [here](https://github.com/brainfucksec/neovim-lua/blob/main/nvim/lua/core/statusline.lua)

-- [Alpha-nvim](https://github.com/goolord/alpha-nvim) -- under the plugs/alpha-config.lua

The startup that pops up without opening a specified file. Also heavily inspired by "brainfucksec" over [here](https://github.com/brainfucksec/neovim-lua/blob/main/nvim/lua/plugins/alpha-nvim.lua)

-- [codeium](https://github.com/Exafunction/codeium.nvim) -- under the plugs/codeium-conf.lua file

An AI autocompletion tool which also requires you to login to a codeium account. Add other languages if necesery

-- [coc](https://github.com/neoclide/coc.nvim) -- under the plugs/coc-config.lua file

Autocompletion make sure to add the langueges you want in the lua file specified

-- [Kanagawa colorthemes](https://github.com/rebelot/kanagawa.nvim) -- under the plugs/color-theme.lua

It comes with the "kanagawa", "kanagawa-wave", "kanagawa-lotus" and "kanagawa-dragon" themes

## License

Currently uses the [MIT](https://choosealicense.com/licenses/mit/) License 
