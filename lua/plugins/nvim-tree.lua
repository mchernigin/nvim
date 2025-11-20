return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- optional, for file icons
  },
  config = function()
    require("nvim-tree").setup({
      view = { adaptive_size = true },
    })
    vim.keymap.set("n", "<leader>e", ":NvimTreeFindFileToggle<CR>", {})
  end,
}
