local null_ls = require("null-ls")
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
null_ls.setup({
    sources = {
        null_ls.builtins.code_actions.shellcheck,
        null_ls.builtins.diagnostics.cmake_lint,
        null_ls.builtins.diagnostics.codespell,
        null_ls.builtins.diagnostics.commitlint,
        null_ls.builtins.diagnostics.cpplint,
        null_ls.builtins.diagnostics.jsonlint,
        null_ls.builtins.diagnostics.markdownlint,
        null_ls.builtins.diagnostics.pylint,
        null_ls.builtins.formatting.clang_format,
        null_ls.builtins.formatting.cmake_format,
        null_ls.builtins.formatting.codespell,
        null_ls.builtins.formatting.latexindent,
        null_ls.builtins.formatting.markdownlint
    },
    on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
                    -- on later neovim version, you should use vim.lsp.buf.format({ async = false }) instead
                    vim.lsp.buf.format({async = false})
                end,
            })
        end
    end,
})
