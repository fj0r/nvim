local keymaps = {
    ['[b'] = "<cmd>lua require'dap'.toggle_breakpoint()<cr>",
    ['[c'] = "<cmd>lua require'dap'.continue()<cr>",
    ['[o'] = "<cmd>lua require'dap'.step_over()<cr>",
    ['[i'] = "<cmd>lua require'dap'.step_into()<cr>",
    ['[u'] = "<cmd>lua require'dap'.step_out()<cr>",
    ['[x'] = "<cmd>lua require'dap'.repl.open()<cr>",
    ['[l'] = "<cmd>lua require'dap'.list_breakpoints()<cr>",
}

for k, v in pairs(keymaps) do
    vim.api.nvim_set_keymap('n', k, v, { noremap = true })
end

--  local widgets = require('dap.ui.widgets')
--  local my_sidebar = widgets.sidebar(widgets.scopes)
--  my_sidebar.open()
