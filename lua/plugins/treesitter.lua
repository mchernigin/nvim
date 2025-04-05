return {
    'nvim-treesitter/nvim-treesitter',
    config = function(_, opts)
        require('nvim-treesitter.configs').setup(opts)
    end,
    opts = {
        highlight = { enable = true },
        indent = { enable = true },
        auto_install = true,
    }
}
