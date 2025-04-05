return {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
        local lspconfig = require('lspconfig')

        local function setup_server(server_name)
            if not lspconfig[server_name] then
                return
            end

            local cmd = lspconfig[server_name].document_config.default_config.cmd
            if not cmd or vim.fn.executable(cmd[1]) == 0 then
                return
            end

            lspconfig[server_name].setup {}
        end

        setup_server("rust_analyzer")
        setup_server("lua_ls")
        setup_server("clangd")
    end
}
