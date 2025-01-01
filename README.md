## Neovim-Config

> References:
>
> My configuration that uses packer, it's created for personal use.
> Greatly inspired by "brainfucksec". The original files by "brainfucksec" can be found [here](https://github.com/brainfucksec/neovim-lua)
>
> Also used many of the plugins default configuration that can be found on the linked sources

## Requirements

It is recommended to have the latest version of neovim installed

This configuration uses the [packer](https://github.com/wbthomason/packer.nvim?tab=readme-ov-file#quickstart) plugin manager. Make sure to install packer as well for the configuration to work

The also contains the plugins:

-- [coc](https://github.com/neoclide/coc.nvim) is the autocompletion plugin that the configuration uses. In order for it to work it requires "nodejs" >= 16.18.0 and "npm" which comes along with nodejs as some might already know

and

-- [codeium](https://github.com/Exafunction/codeium.nvim) which "requires a codeium account" for it to work and also have to log in with (If you do not want that plugin to be active make sure to navigate to "lua/configs/packer.lua" and comment or completley remove the line that enables it)

## Setup

Before starting make sure you have a backup of your already existing configuration if you have one

After that to set it up you can clone it with git on your neovim configuration like this:

For Linux (And probably MacOS haven't tested it please make sure to leave comments from MacOS)

```bash
git clone https://github.com/noone-404/neovim-config.git ~/.config/nvim
```

For Windows:

```powershell
git clone https://github.com/noone-404/neovim-config.git $HOME\AppData\Local\nvim
```

Once cloned successfully press enter to ignore all the errors and warnings and afterwards type:

```bash
:PackerInstall
```

or

```bash
:PackerSync
```

and simply wait for it to be installed.

When Installing you will get an error. Simply just quit the ide, reopen neovim and run the above command again

Also if you want to use this for c and c++ development then make sure you have "coc" installed, make it see a .c or .cpp file and type down:

```bash
:CocCommand clangd.install
```

afterwards wait for a few seconds

## Plugins and Keybindings

The Keybindings are accesible to change in the "keymaps.lua" file

**You can switch between windows with:**

- control+h: on the left

- control+l: on the right

- control+j: for going down

- control+k: for going up

**You can handle tabs with:**

- control+t: To create a new tab

- control+x: To close the current tab

- alt+rightarrow: To move to the next one

- alt+leftarrow: To move to the previous one

**Other stuff:**

- control+s: Save current file

- space+w: Save all buffer changes

- control+q: Quit neovim buffer

- space+q: Quit neovim as a whole

**The Plugins that are being used are:**

-- [Neo-Tree](https://github.com/nvim-neo-tree/neo-tree.nvim) -- under the plugs/neo-nvim.lua file

Used to have a hierarchy/File explorer to traverse files on the project

shortcuts:

- Control+C: Toggle tree on the right (Can be changes through the file)

-- [Telescope](https://github.com/nvim-telescope/telescope.nvim) -- currently no configuration file

Makes your life easier while trying to find files and other useful stuff

shortcuts:

- control+f: To find a specific file

- control+b: Find a specific buffer (tab)

- control+g: Something with live_grep

-- [Floaterm](https://github.com/voldikss/vim-floaterm) -- under the plugs/floaterm.lua file

Used as an in-editor terminal

shortcuts:

- control+p: Toggle the terminal (floating mode)

- space+h: Toggle the terminal (Horizontal mode)

- space+v: Toggle the terminal (Vertical mode)

- Escape while having it toggled to escape

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

-- [Cmake-tools](https://github.com/Civitasv/cmake-tools.nvim) -- under the plugs/cmake-tools-conf.lua file

CMake tools for neovim that make your life easier while working with cmake.

shortcuts:

- space + gen: Generate cmake files

- space + bu: Build the cmake files

- space + run: Run the cmake executable

-- [Vim-figitive](https://github.com/tpope/vim-fugitive) -- corrently no configuration file

It allows you to run git commands very easily through neovim by typing the letter "G" and a git command

-- [Kanagawa colorthemes](https://github.com/rebelot/kanagawa.nvim) -- under the plugs/color-theme.lua

It comes with the "kanagawa", "kanagawa-wave", "kanagawa-lotus" and "kanagawa-dragon" themes

-- [Tetris](https://github.com/alec-gibson/nvim-tetris) -- currently no config file

The controls are self-explanatory also explained in the github

shortcuts:

- space + tet: To launch an instance of Tetris

-- [Minesweeper](https://github.com/seandewar/nvimesweeper) -- currently no config file

The controls are explained in it's github

shortcuts:

- space+mine: Launches an instance of Minesweeper

## License

Currently uses the [GNU GPL 3](https://choosealicense.com/licenses/gpl-3.0/) License
