return {
  "lewis6991/gitsigns.nvim",
  config = function()
    require('gitsigns').setup()
    vim.keymap.set('n', '<leader>gb', ':Gitsigns blame<CR>', {})
    vim.keymap.set('n', '<leader>gs', ':Gitsigns preview_hunk<CR>', {})
  end
}
