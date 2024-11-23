return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    filesystem = {
      filtered_items = {
        visible = true,
        show_hidden_count = true,
        hide_dotfiles = false,
        hide_gitignored = false,
        never_show = {},
      },
      window = {
        mappings = {
          ["L"] = "open_nofocus",
        },
      },
      commands = {
        open_nofocus = function(state)
          require("neo-tree.sources.filesystem.commands").open(state)
          vim.schedule(function()
            vim.cmd([[Neotree focus]])
          end)
        end,
      },
    },
    window = {
      mappings = {
        ["l"] = "open",
        ["h"] = "close_node",
      },
    },
  },
}
