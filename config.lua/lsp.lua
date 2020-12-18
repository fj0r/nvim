local lspconfig = require'lspconfig'
local lsp_status = require'lsp-status'
lsp_status.register_progress()

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
    yamlls = {},
    jsonls = {},
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

function on_attach(client)
    -- require'completion'.on_attach(client)
    -- FIXME: lsp_status
    -- lsp_status.on_attach(client)
end

for k, v in pairs(user_cfg) do
    local cfg = {
        on_attach = on_attach,
        -- FIXME: lsp_status
        -- capabilities = lsp_status.capabilities,
    }
    for i, j in pairs(v) do cfg[i] = j end
    lspconfig[k].setup(cfg)
end

--[[
curl -L https://github.com/rust-analyzer/rust-analyzer/releases/latest/download/rust-analyzer-linux -o ~/.local/bin/rust-analyzer
chmod +x ~/.local/bin/rust-analyzer
--]]

