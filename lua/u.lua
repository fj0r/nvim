function _G.dump(...)
    local objects = vim.tbl_map(vim.inspect, {...})
    print(unpack(objects))
end

_G.cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')
_G.fn = vim.fn    -- to call Vim functions e.g. fn.bufnr()
_G.g = vim.g      -- a table to access global variables
_G.scopes = {o = vim.o, b = vim.bo, w = vim.wo}

function _G.opt(scope, key, value)
  _G.scopes[scope][key] = value
  if scope ~= 'o' then _G.scopes['o'][key] = value end
end

function _G.map(mode, lhs, rhs, opts)
  local options = {noremap = true, silent = true }
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

function _G.bmap(buf, mode, lhs, rhs, opts)
  local options = {noremap = true, silent = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_buf_set_keymap(buf, mode, lhs, rhs, options)
end
