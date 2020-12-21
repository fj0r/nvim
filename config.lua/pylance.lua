local lspconfig = require'lspconfig'
local configs = require'lspconfig/configs'
local util = require'lspconfig/util'


-- plug_path = 'nvim/config.lua'
-- local _, _, plug_path = string.find(debug.getinfo(1, "S").source:sub(2),  "(.*/)pylance.lua")
-- local ppath  = os.getenv('HOME') .. '/.vscode-server/extensions'
local ppath  = '/opt/language-server'
local plug_path
for i in io.popen('find '..ppath.." -name '*pylance*'"):lines() do
    plug_path = i
    break
end

if plug_path then
    vim.cmd [[ let $ELECTRON_RUN_AS_NODE = 1 ]]
    vim.cmd [[ let $VSCODE_NLS_CONFIG = '{"locale": "en"}' ]]

    configs.pylance = {
        default_config = {
            cmd = {"node", plug_path .. "/dist/server.bundle.js", "--stdio"},
            filetypes = {"python"},
            root_dir = util.root_pattern(".git", "setup.py",  "setup.cfg", "pyproject.toml", "requirements.txt"),
            settings = {
                python = {
                    analysis = {
                        autoSearchPaths = true,
                        useLibraryCodeForTypes = true,
                        typeCheckingMode = "strict",
                    }
                }
            }
        }
    }

    lspconfig.pylance.setup{}
end
