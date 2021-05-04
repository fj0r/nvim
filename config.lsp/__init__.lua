local on_attach = function (client, bufnr)
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    bmap(bufnr, 'n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>')
    bmap(bufnr, 'n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>')
    bmap(bufnr, 'n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>')
    bmap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
    bmap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
    bmap(bufnr, 'n', '[wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>')
    bmap(bufnr, 'n', '[wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>')
    bmap(bufnr, 'n', '[wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>')
    bmap(bufnr, 'n', '[D', '<cmd>lua vim.lsp.buf.type_definition()<CR>')
    bmap(bufnr, 'n', '[r', '<cmd>lua vim.lsp.buf.rename()<CR>')
    bmap(bufnr, 'n', '[a', '<cmd>lua vim.lsp.buf.code_action()<CR>')
    bmap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>')
    bmap(bufnr, 'n', '[e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>')
    bmap(bufnr, 'n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>')
    bmap(bufnr, 'n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>')
    bmap(bufnr, 'n', '[q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>')

    -- Set some keybinds conditional on server capabilities
    if client.resolved_capabilities.document_formatting then
        bmap(bufnr, "n", "[f", "<cmd>lua vim.lsp.buf.formatting()<CR>")
    end
    if client.resolved_capabilities.document_range_formatting then
        bmap(bufnr, "v", "[f", "<cmd>lua vim.lsp.buf.range_formatting()<CR>")
    end

    -- Set autocommands conditional on server_capabilities
    if client.resolved_capabilities.document_highlight then
        vim.api.nvim_exec([[
        hi LspReferenceRead cterm=bold ctermbg=red guibg=LightYellow
        hi LspReferenceText cterm=bold ctermbg=red guibg=LightYellow
        hi LspReferenceWrite cterm=bold ctermbg=red guibg=LightYellow
        augroup lsp_document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
        augroup END
        ]], false)
    end
end


local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
    properties = {
        'documentation',
        'detail',
        'additionalTextEdits',
    }
}

local lspconfig = require'lspconfig'
lspconfig.util.default_config = vim.tbl_extend( "force",
lspconfig.util.default_config,
{
    on_attach = on_attach,
    capabilities = capabilities,
})

