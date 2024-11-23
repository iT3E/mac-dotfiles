return {
  "nvim-treesitter/nvim-treesitter",
  highlight = {
    disable = function()
      if string.find(vim.bo.filetype, "chezmoitmpl") then
        return true
      end
    end,
  },
  opts = function(_, opts)
    if type(opts.ensure_installed) == "table" then
      vim.list_extend(opts.ensure_installed, {
        "terraform",
        "hcl",
        "python",
        "html",
        "yaml",
        "bash",
        "json",
        "javascript",
        "markdown",
        "markdown_inline",
        "regex",
        "lua",
      })
    end
  end,
}
