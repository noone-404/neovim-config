-- Floatterm Customization
vim.g.floaterm_opacity = 0.8

-- Summon the terminal according to the shortcut
function ToggleFloatermLayout(layout)
  if layout == 'vertical' then
    vim.g.floaterm_width = 0.4
    vim.g.floaterm_height = 1.0
    vim.g.floaterm_wintype = 'vsplit'
    vim.g.floaterm_position = 'bottom'
  elseif layout == 'horizontal' then
    vim.g.floaterm_width = 1.0
    vim.g.floaterm_height = 0.4
    vim.g.floaterm_wintype = 'split'
    vim.g.floaterm_position = 'right'
  else
    vim.g.floaterm_width = 0.8
    vim.g.floaterm_height = 0.8
    vim.g.floaterm_wintype = 'float'
    vim.g.floaterm_position = 'center'
  end

  vim.cmd('FloatermToggle')
end

