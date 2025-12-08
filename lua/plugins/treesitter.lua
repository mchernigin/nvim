return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  branch = 'main',
  build = ":TSUpdate",
  config = function()
    vim.api.nvim_create_autocmd("FileType", {
      group = vim.api.nvim_create_augroup("EnableTreesitter", { clear = true }),
      callback = function(args)
        local lang = vim.treesitter.language.get_lang(args.match)
        if lang and pcall(vim.treesitter.start, args.buf, lang) then
          -- Successfully started
        end
      end,
    })
  end
}
