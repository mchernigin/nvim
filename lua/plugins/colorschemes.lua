return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "macchiato",
        transparent_background = true,
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          treesitter = true,
          notify = true,
          mini = {
            enabled = true,
            indentscope_color = "",
          },
        },
      })
      -- vim.cmd.colorscheme("catppuccin")
    end,
  },
  {
    "shaunsingh/solarized.nvim",
    name = "solarized",
    lazy = false,
    priority = 1000,
    config = function()
      -- Example config in lua
      vim.g.solarized_italic_comments = true
      vim.g.solarized_italic_keywords = true
      vim.g.solarized_italic_functions = true
      vim.g.solarized_italic_variables = false
      vim.g.solarized_contrast = true
      vim.g.solarized_borders = true
      vim.g.solarized_disable_background = true

      -- require("solarized").set()
    end,
  },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
      -- Default options:
      require("gruvbox").setup({
        terminal_colors = true, -- add neovim terminal colors
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
          strings = true,
          emphasis = true,
          comments = true,
          operators = false,
          folds = true,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        contrast = "hard", -- can be "hard", "soft" or empty string
        palette_overrides = {},
        overrides = {},
        dim_inactive = false,
        transparent_mode = true,
      })
      vim.cmd("colorscheme gruvbox")
    end,
  },
}
