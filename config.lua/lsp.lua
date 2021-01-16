local I = require 'lsp'

local user_cfg = {
    -- rust: https://github.com/rust-analyzer/rust-analyzer
    -- haskell: https://github.com/haskell/haskell-language-server
    -- python: https://github.com/palantir/python-language-server
    -- use pylance!
    -- pyls = {},
    -- scala
    -- typescript
    -- golang: https://github.com/golang/tools/tree/master/gopls
    -- sqlls = {},
    -- sumneko_lua = {},
    -- dockerls = {},
}

for k, v in pairs(user_cfg) do
    v.name = k
    I.setup(v)
end
