if vim.g.nvim_preset ~= 'core' then
    local lans = { 'bash', 'cpp', 'css', 'go', 'gomod', 'graphql'
               , 'html', 'java', 'javascript', 'jsdoc', 'json', 'jsonc', 'julia'
               , 'lua', 'php', 'python', 'regex', 'rust'
               , 'toml', 'tsx', 'typescript', 'vue', 'yaml'
               }
    local ts = require 'nvim-treesitter.configs'
    ts.setup { ensure_installed = lans
             , highlight = { enable = true
                           , use_languagetree = true
                           }
             }
end

