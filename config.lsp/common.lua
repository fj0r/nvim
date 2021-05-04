local config = require'lspconfig'

for _, lsp in
ipairs { "hls"
       , "rust_analyzer"
       , "pyright"
       , "tsserver"
       , "gopls"
       } do config[lsp].setup{} end

