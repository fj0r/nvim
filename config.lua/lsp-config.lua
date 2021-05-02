local nvim_lsp = require('lspconfig')

-- Use a loop to conveniently both setup defined servers
-- and map buffer local keybindings when the language server attaches
local servers = { "pyright", "rust_analyzer", "tsserver" }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
      on_attach = lspconf_on_attach,
      capabilities = lspconf_capabilities,
  }
end
