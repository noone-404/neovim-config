local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Packer syncronization keymap
map('n', "<M-C-Shift-z>", ":PackerSync", opts, {desc = "Syncronize the packer packegies with just a key combination for every change"})

-- Switching between windows
map('n', "<C-h>", "<C-w>h", opts, { desc = "switch window left" })
map('n', "<C-l>", "<C-w>l", opts, { desc = "switch window right" })
map('n', "<C-j>", "<C-w>j", opts, { desc = "switch window down" })
map('n', "<C-k>", "<C-w>k", opts, { desc = "switch window up" })

map('n', "<C-c>", ":Neotree toggle<CR>", opts, { desc = "Toggle the filesystem" })

-- Implementation of tabs
map('n', "<C-t>", ":tabnew<CR>", opts, { desc = "Creates a new tab" })
map('n', "<M-Right>", ":bn<CR>", opts, { desc = "Moves to the next tab" })
map('n', "<M-Left>", ":bp<CR>", opts, { desc = "Moves to the previous tab" })
map('n', "<C-x>", ":bp |bd #<CR>", opts, { desc = "Closes the current tab" })

-- Go to definition, type definition, and references
map('n', 'gd', '<Plug>(coc-definition)', opts, { desc = "Go to definition" })
map('n', 'gy', '<Plug>(coc-type-definition)', opts, { desc = "Go to type definition" })
map('n', 'gr', '<Plug>(coc-references)', opts, { desc = "Show references" })

-- Diagnostics navigation
map('n', '[g', '<Plug>(coc-diagnostic-prev)', opts, { desc = "Previous diagnostic" })
map('n', ']g', '<Plug>(coc-diagnostic-next)', opts , { desc = "Next diagnostic" })

-- CoC lists
map('n', '<C-S-s>', ':<C-u>CocList -I symbols<CR>', opts, { desc = "List symbols" })
map('n', '<C-d>', ':<C-u>CocList diagnostics<CR>', opts, { desc = "Show diagnostics" })

-- Actions and renaming
map('n', '<C-a>', '<Plug>(coc-codeaction)', opts, { desc = "Code action" })
map('n', '<C-r>', '<Plug>(coc-rename)', opts, { desc = "Rename" })

-- Navigation between snippets
vim.g.coc_snippet_next = '<Tab>'
vim.g.coc_snippet_prev = '<S-Tab>'

-- Accept recommendation from snippet
vim.keymap.set("i", "<CR>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], { expr = true, noremap = true, silent = true })

-- Float Terminal functionality
map('n', "<Space>v", function() ToggleFloatermLayout('vertical') end, opts, { desc = "Toggle vertical Floaterm" })
map('n', "<Space>h", function() ToggleFloatermLayout('horizontal') end, opts, { desc = "Toggle horizontal Floaterm" })
map('n', "<C-p>", function() ToggleFloatermLayout('float') end, opts, { desc = "Toggle floating Floaterm" })

-- Exit terminal mode
map('t', "<Esc>", [[<C-\><C-n>]], opts, { desc = "Exit terminal mode" })

-- Telescope Key Mappings
map('n', "<C-f>", ":Telescope find_files<CR>", opts, { desc = "Opens file search with telescope"})
map('n', "<C-g>", "<cmd>Telescope live_grep<CR>", opts, { desc = "I don't know what this one does but I guess it grabs a specific thing" })
map('n', "<C-b>", "<cmd>Telescope buffers<CR>", opts, { desc = "Make telescope search through tabs" })

-- Basic stuff
map('n', "<C-q>", ":q<CR>", opts, { desc = "Quit" })
map('n', "<Space>q", ":qa<CR>", opts, { desc = "Quit all" })
map('n', "<C-s>", ":w<CR>", opts, { desc = "Save current buffer" })
map('n', "<Space>s", ":wa<CR>", opts, { desc = "Save all buffers" })
map('n', "<C-z>", ":u<CR>", opts, { desc = "Undo the changes with a keybind like a modern IDE" })

-- Launch Tetris
map('n', "<Space>tet", ":Tetris<CR>", opts, { desc = "Start a game of Tetris" })

-- Launch Minesweeper
map('n', "<Space>mine", ":Nvimesweeper<CR>", opts, { desc = "Start a game of Minesweeper" })

-- Using the CMake plugin
map('n', "<Space>gen", ":CMakeGenerate<CR>", opts, { desc = "Generate cmake configuration"})
map('n', "<Space>bu", ":CMakeBuild<CR>", opts, { desc = "Generate cmake build files"})
map('n', "<Space>run", ":CMakeRun<CR>", opts, { desc = "Run the cmake executable"})

