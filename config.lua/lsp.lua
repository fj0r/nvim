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
    yamlls = {
      settings = {
        yaml = {
          schemas = {
            ['http://json.schemastore.org/github-workflow'] = '.github/workflows/*.{yml,yaml}',
            ['http://json.schemastore.org/github-action'] = '.github/action.{yml,yaml}',
            ['http://json.schemastore.org/ansible-stable-2.9'] = 'roles/tasks/*.{yml,yaml}',
            ['http://json.schemastore.org/prettierrc'] = '.prettierrc.{yml,yaml}',
            ['http://json.schemastore.org/stylelintrc'] = '.stylelintrc.{yml,yaml}',
            ['http://json.schemastore.org/circleciconfig'] = '.circleci/**/*.{yml,yaml}'
          }
        }
      }
    },
    jsonls = {
      settings = {
        json = {
          schemas = {
            {
              description = 'TypeScript compiler configuration file',
              fileMatch = {'tsconfig.json', 'tsconfig.*.json'},
              url = 'http://json.schemastore.org/tsconfig'
            },
            {
              description = 'Lerna config',
              fileMatch = {'lerna.json'},
              url = 'http://json.schemastore.org/lerna'
            },
            {
              description = 'Babel configuration',
              fileMatch = {'.babelrc.json', '.babelrc', 'babel.config.json'},
              url = 'http://json.schemastore.org/lerna'
            },
            {
              description = 'ESLint config',
              fileMatch = {'.eslintrc.json', '.eslintrc'},
              url = 'http://json.schemastore.org/eslintrc'
            },
            {
              description = 'Bucklescript config',
              fileMatch = {'bsconfig.json'},
              url = 'https://bucklescript.github.io/bucklescript/docson/build-schema.json'
            },
            {
              description = 'Prettier config',
              fileMatch = {'.prettierrc', '.prettierrc.json', 'prettier.config.json'},
              url = 'http://json.schemastore.org/prettierrc'
            },
            {
              description = 'Vercel Now config',
              fileMatch = {'now.json'},
              url = 'http://json.schemastore.org/now'
            },
            {
              description = 'Stylelint config',
              fileMatch = {'.stylelintrc', '.stylelintrc.json', 'stylelint.config.json'},
              url = 'http://json.schemastore.org/stylelintrc'
            },
          }
        },
      }
    },
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

