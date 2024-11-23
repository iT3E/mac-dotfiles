return {
  "zbirenbaum/copilot.lua",
  event = { "InsertEnter" },
  opts = {
    filetypes = {
      ["."] = false,
      gitcommit = false,
      gitrebase = false,
      help = false,
      markdown = false,
      yaml = false,
    },
  },
}
