return {
  {
    "p00f/alabaster.nvim",
    config = function()
      -- vim.cmd.colorscheme("alabaster")
    end,
  },

  {
    "blazkowolf/gruber-darker.nvim",
    opts = {
      bold = false,
      italic = {
        strings = false,
      },
    },
    config = function()
      require("gruber-darker").setup({
        bold = false,
        italic = {
          strings = false,
          comments = false,
          folds = false,
        },
      })
      vim.cmd.colorscheme("gruber-darker")

      vim.api.nvim_set_hl(0, "Normal", { bg = "#101010" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#101010" })
    end,
  },
}
