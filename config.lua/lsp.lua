local I = require 'lsp'

local user_cfg = {
    -- rust: https://github.com/rust-analyzer/rust-analyzer
    rust_analyzer = {},
    -- haskell: https://github.com/haskell/haskell-language-server
    hls = {},
    -- python: https://github.com/palantir/python-language-server
    -- use pylance!
    -- pyls = {},
    -- scala
    metals = {},
    -- typescript
    tsserver = {},
    -- golang: https://github.com/golang/tools/tree/master/gopls
    gopls = {},
    sqlls = {},
    vuels = {},
    sumneko_lua = {},
    html = {},
    cssls = {},
    dockerls = {},
    vimls = {},
    bashls = {},
    -- php
    intelephense = {},
}

for k, v in pairs(user_cfg) do
    v.name = k
    I.setup(v)
end

