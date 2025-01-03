-- The Coc snippets and autocompletion
vim.g['coc_snippet#enable'] = true

vim.g.coc_global_extensions = {
  'coc-pairs',
  'coc-json',
  -- 'coc-lua', -- Lua is not supported in windows (Of course if you are running linux then uncomment and delete the message)
  'coc-prettier',
  'coc-rust-analyzer',
  'coc-clangd',
  'coc-cmake'
}

vim.keymap.set('i', '<CR>', function()
  return vim.fn.pumvisible() == 1 and vim.fn['coc#pum#confirm']() or '\n'
end, { expr = true, silent = true, desc = "Confirm selection or insert newline" })

