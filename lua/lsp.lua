local M = {}
local lspconfig = require'lspconfig'
-- local lsp_status = require'lsp-status'
-- lsp_status.register_progress()

function on_attach(client)
    -- require'completion'.on_attach(client)
    -- FIXME: lsp_status
    -- lsp_status.on_attach(client)
end

function M.setup(cfg)
    local default = {
        on_attach = on_attach,
        -- FIXME: lsp_status
        -- capabilities = lsp_status.capabilities,
    }
    for k, v in pairs(cfg) do default[k] = v end
    lspconfig[cfg.name].setup(default)
end

return M

--[[
curl -L https://github.com/rust-analyzer/rust-analyzer/releases/latest/download/rust-analyzer-linux -o ~/.local/bin/rust-analyzer
chmod +x ~/.local/bin/rust-analyzer
--]]

