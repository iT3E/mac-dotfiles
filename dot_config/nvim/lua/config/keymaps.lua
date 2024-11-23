-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local wk = require("which-key")

vim.keymap.set(
  "n",
  "<leader>sx",
  require("telescope.builtin").resume,
  { noremap = true, silent = true, desc = "Resume" }
)

vim.keymap.set(
  "n",
  "<leader>unh",
  ":Telescope notify<CR>",
  { noremap = true, silent = true, desc = "Search Notification History" }
)

vim.keymap.set(
  "n",
  "<leader>yp",
  "<cmd>let @+ = expand('%:~:.')<cr> <cmd>lua require('notify')('Yanked relative path')<cr>",
  { noremap = true, silent = true, desc = "Relative Path" }
)

vim.keymap.set(
  "n",
  "<leader>yf",
  "<cmd>let @+ = expand('%:p')<cr> <cmd>lua require('notify')('Yanked full path')<cr>",
  { noremap = true, silent = true, desc = "Full Path" }
)

vim.keymap.set("n", "<leader>ya", "<cmd>%y<cr>", { noremap = true, silent = true, desc = "Buffer Contents" })

vim.keymap.set("n", "<C-c>", "<cmd>ChatGPT<CR>", { noremap = true, silent = true, desc = "ChatGPT" })

wk.register({
  c = {
    name = "ChatGPT",
    c = { "<cmd>ChatGPT<CR>", "ChatGPT" },
    e = { "<cmd>ChatGPTEditWithInstruction<CR>", "Edit with instruction", mode = { "n", "v" } },
    g = { "<cmd>ChatGPTRun grammar_correction<CR>", "Grammar Correction", mode = { "n", "v" } },
    t = { "<cmd>ChatGPTRun translate<CR>", "Translate", mode = { "n", "v" } },
    k = { "<cmd>ChatGPTRun keywords<CR>", "Keywords", mode = { "n", "v" } },
    d = { "<cmd>ChatGPTRun docstring<CR>", "Docstring", mode = { "n", "v" } },
    a = { "<cmd>ChatGPTRun add_tests<CR>", "Add Tests", mode = { "n", "v" } },
    o = { "<cmd>ChatGPTRun optimize_code<CR>", "Optimize Code", mode = { "n", "v" } },
    s = { "<cmd>ChatGPTRun summarize<CR>", "Summarize", mode = { "n", "v" } },
    f = { "<cmd>ChatGPTRun fix_bugs<CR>", "Fix Bugs", mode = { "n", "v" } },
    x = { "<cmd>ChatGPTRun explain_code<CR>", "Explain Code", mode = { "n", "v" } },
    r = { "<cmd>ChatGPTRun roxygen_edit<CR>", "Roxygen Edit", mode = { "n", "v" } },
    l = { "<cmd>ChatGPTRun code_readability_analysis<CR>", "Code Readability Analysis", mode = { "n", "v" } },
  },
}, { prefix = "<leader>c" })

require("which-key").register({
  -- ...
  ["<C-g>"] = {
    c = { ":<C-u>'<,'>GpChatNew<cr>", "Visual Chat New" },
    p = { ":<C-u>'<,'>GpChatPaste<cr>", "Visual Chat Paste" },
    t = { ":<C-u>'<,'>GpChatToggle<cr>", "Visual Toggle Chat" },

    ["<C-x>"] = { ":<C-u>'<,'>GpChatNew split<cr>", "Visual Chat New split" },
    ["<C-v>"] = { ":<C-u>'<,'>GpChatNew vsplit<cr>", "Visual Chat New vsplit" },
    ["<C-t>"] = { ":<C-u>'<,'>GpChatNew tabnew<cr>", "Visual Chat New tabnew" },

    r = { ":<C-u>'<,'>GpRewrite<cr>", "Visual Rewrite" },
    a = { ":<C-u>'<,'>GpAppend<cr>", "Visual Append (after)" },
    b = { ":<C-u>'<,'>GpPrepend<cr>", "Visual Prepend (before)" },
    i = { ":<C-u>'<,'>GpImplement<cr>", "Implement selection" },

    g = {
      name = "generate into new ..",
      p = { ":<C-u>'<,'>GpPopup<cr>", "Visual Popup" },
      e = { ":<C-u>'<,'>GpEnew<cr>", "Visual GpEnew" },
      n = { ":<C-u>'<,'>GpNew<cr>", "Visual GpNew" },
      v = { ":<C-u>'<,'>GpVnew<cr>", "Visual GpVnew" },
      t = { ":<C-u>'<,'>GpTabnew<cr>", "Visual GpTabnew" },
    },

    n = { "<cmd>GpNextAgent<cr>", "Next Agent" },
    s = { "<cmd>GpStop<cr>", "GpStop" },
    x = { ":<C-u>'<,'>GpContext<cr>", "Visual GpContext" },

    w = {
      name = "Whisper",
      w = { ":<C-u>'<,'>GpWhisper<cr>", "Whisper" },
      r = { ":<C-u>'<,'>GpWhisperRewrite<cr>", "Whisper Rewrite" },
      a = { ":<C-u>'<,'>GpWhisperAppend<cr>", "Whisper Append (after)" },
      b = { ":<C-u>'<,'>GpWhisperPrepend<cr>", "Whisper Prepend (before)" },
      p = { ":<C-u>'<,'>GpWhisperPopup<cr>", "Whisper Popup" },
      e = { ":<C-u>'<,'>GpWhisperEnew<cr>", "Whisper Enew" },
      n = { ":<C-u>'<,'>GpWhisperNew<cr>", "Whisper New" },
      v = { ":<C-u>'<,'>GpWhisperVnew<cr>", "Whisper Vnew" },
      t = { ":<C-u>'<,'>GpWhisperTabnew<cr>", "Whisper Tabnew" },
    },
  },
  -- ...
}, {
  mode = "v", -- VISUAL mode
  prefix = "",
  buffer = nil,
  silent = true,
  noremap = true,
  nowait = true,
})

-- NORMAL mode mappings
require("which-key").register({
  -- ...
  ["<C-g>"] = {
    c = { "<cmd>GpChatNew<cr>", "New Chat" },
    t = { "<cmd>GpChatToggle<cr>", "Toggle Chat" },
    f = { "<cmd>GpChatFinder<cr>", "Chat Finder" },

    ["<C-x>"] = { "<cmd>GpChatNew split<cr>", "New Chat split" },
    ["<C-v>"] = { "<cmd>GpChatNew vsplit<cr>", "New Chat vsplit" },
    ["<C-t>"] = { "<cmd>GpChatNew tabnew<cr>", "New Chat tabnew" },

    r = { "<cmd>GpRewrite<cr>", "Inline Rewrite" },
    a = { "<cmd>GpAppend<cr>", "Append (after)" },
    b = { "<cmd>GpPrepend<cr>", "Prepend (before)" },

    g = {
      name = "generate into new ..",
      p = { "<cmd>GpPopup<cr>", "Popup" },
      e = { "<cmd>GpEnew<cr>", "GpEnew" },
      n = { "<cmd>GpNew<cr>", "GpNew" },
      v = { "<cmd>GpVnew<cr>", "GpVnew" },
      t = { "<cmd>GpTabnew<cr>", "GpTabnew" },
    },

    n = { "<cmd>GpNextAgent<cr>", "Next Agent" },
    s = { "<cmd>GpStop<cr>", "GpStop" },
    x = { "<cmd>GpContext<cr>", "Toggle GpContext" },

    w = {
      name = "Whisper",
      w = { "<cmd>GpWhisper<cr>", "Whisper" },
      r = { "<cmd>GpWhisperRewrite<cr>", "Whisper Inline Rewrite" },
      a = { "<cmd>GpWhisperAppend<cr>", "Whisper Append (after)" },
      b = { "<cmd>GpWhisperPrepend<cr>", "Whisper Prepend (before)" },
      p = { "<cmd>GpWhisperPopup<cr>", "Whisper Popup" },
      e = { "<cmd>GpWhisperEnew<cr>", "Whisper Enew" },
      n = { "<cmd>GpWhisperNew<cr>", "Whisper New" },
      v = { "<cmd>GpWhisperVnew<cr>", "Whisper Vnew" },
      t = { "<cmd>GpWhisperTabnew<cr>", "Whisper Tabnew" },
    },
  },
  -- ...
}, {
  mode = "n", -- NORMAL mode
  prefix = "",
  buffer = nil,
  silent = true,
  noremap = true,
  nowait = true,
})

-- INSERT mode mappings
require("which-key").register({
  -- ...
  ["<C-g>"] = {
    c = { "<cmd>GpChatNew<cr>", "New Chat" },
    t = { "<cmd>GpChatToggle<cr>", "Toggle Chat" },
    f = { "<cmd>GpChatFinder<cr>", "Chat Finder" },

    ["<C-x>"] = { "<cmd>GpChatNew split<cr>", "New Chat split" },
    ["<C-v>"] = { "<cmd>GpChatNew vsplit<cr>", "New Chat vsplit" },
    ["<C-t>"] = { "<cmd>GpChatNew tabnew<cr>", "New Chat tabnew" },

    r = { "<cmd>GpRewrite<cr>", "Inline Rewrite" },
    a = { "<cmd>GpAppend<cr>", "Append (after)" },
    b = { "<cmd>GpPrepend<cr>", "Prepend (before)" },

    g = {
      name = "generate into new ..",
      p = { "<cmd>GpPopup<cr>", "Popup" },
      e = { "<cmd>GpEnew<cr>", "GpEnew" },
      n = { "<cmd>GpNew<cr>", "GpNew" },
      v = { "<cmd>GpVnew<cr>", "GpVnew" },
      t = { "<cmd>GpTabnew<cr>", "GpTabnew" },
    },

    x = { "<cmd>GpContext<cr>", "Toggle GpContext" },
    s = { "<cmd>GpStop<cr>", "GpStop" },
    n = { "<cmd>GpNextAgent<cr>", "Next Agent" },

    w = {
      name = "Whisper",
      w = { "<cmd>GpWhisper<cr>", "Whisper" },
      r = { "<cmd>GpWhisperRewrite<cr>", "Whisper Inline Rewrite" },
      a = { "<cmd>GpWhisperAppend<cr>", "Whisper Append (after)" },
      b = { "<cmd>GpWhisperPrepend<cr>", "Whisper Prepend (before)" },
      p = { "<cmd>GpWhisperPopup<cr>", "Whisper Popup" },
      e = { "<cmd>GpWhisperEnew<cr>", "Whisper Enew" },
      n = { "<cmd>GpWhisperNew<cr>", "Whisper New" },
      v = { "<cmd>GpWhisperVnew<cr>", "Whisper Vnew" },
      t = { "<cmd>GpWhisperTabnew<cr>", "Whisper Tabnew" },
    },
  },
  -- ...
}, {
  mode = "i", -- INSERT mode
  prefix = "",
  buffer = nil,
  silent = true,
  noremap = true,
  nowait = true,
})
