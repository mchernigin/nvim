vim.lsp.enable({
  -- 'rust_analyzer',
  'lua_ls',
})

-- Enable autocomplete
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(event)
    vim.lsp.completion.enable(true, event.data.client_id, event.buf, { autotrigger = true })
  end,
})

vim.diagnostic.config({
    underline = false,
    signs = {
        active = true,
        text = {
          [vim.diagnostic.severity.ERROR] = "",
          [vim.diagnostic.severity.WARN]  = "",
          [vim.diagnostic.severity.HINT]  = "󰟃",
          [vim.diagnostic.severity.INFO]  = "",
        },
    },
    virtual_text = false,
    float = {
        border = "single",
        format = function(diagnostic)
            return string.format(
                "%s (%s) [%s]",
                diagnostic.message,
                diagnostic.source,
                diagnostic.code or diagnostic.user_data.lsp.code
            )
        end,
    },
})
