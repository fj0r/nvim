local keymaps = {
    ['<leader>d'] = "<cmd>lua require('telescope.builtin').find_files()<cr>",
    ['<leader>r'] = "<cmd>lua require('telescope.builtin').live_grep()<cr>",
    ['<leader>b'] = "<cmd>lua require('telescope.builtin').buffers()<cr>",
    ['<leader>h'] = "<cmd>lua require('telescope.builtin').help_tags()<cr>",
}

for k, v in pairs(keymaps) do
    vim.api.nvim_set_keymap('n', k, v, { noremap = true })
end


local actions = require('telescope.actions')
require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        ["<c-x>"] = false,
        ["<C-s>"] = actions.select_horizontal,
      },
    },
  }
}
