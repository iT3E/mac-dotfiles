return {
  "robitx/gp.nvim",
  config = function()
    require("gp").setup({
      openai_api_key_cmd = "bw get password OAI_API_KEY",
      openai_api_key = { "bw", "get", "password", "OAI_API_KEY" },
      -- default command agents (model + persona)
      -- name, model and system_prompt are mandatory fields
      -- to use agent for chat set chat = true, for command set command = true
      -- to remove some default agent completely set it just with the name like:
      -- agents = {  { name = "ChatGPT4" }, ... },
      agents = {
        {
          name = "gpt-4o-2024-05-13-verbose",
          chat = true,
          command = false,
          -- string with model name or table with model name and parameters
          model = { model = "gpt-4o-2024-05-13", temperature = 1.1, top_p = 1 },
          -- system prompt (use this to specify the persona/role of the AI)
          system_prompt = "You are a general AI assistant.\n\n"
            .. "The user provided the additional info about how they would like you to respond:\n\n"
            .. "- If you're unsure don't guess and say you don't know instead.\n"
            .. "- Ask question if you need clarification to provide better answer.\n"
            .. "- Think deeply and carefully from first principles step by step.\n"
            .. "- Zoom out first to see the big picture and then zoom in to details.\n"
            .. "- Use Socratic method to improve your thinking and coding skills.\n"
            .. "- Don't elide any code from your output if the answer requires coding.\n"
            .. "- Take a deep breath; You've got this!\n",
        },
        {
          name = "gpt-4o-2024-05-13-lessverbose",
          chat = true,
          command = false,
          -- string with model name or table with model name and parameters
          model = { model = "gpt-4o-2024-05-13", temperature = 1.1, top_p = 1 },
          -- system prompt (use this to specify the persona/role of the AI)
          system_prompt = "You are a general AI assistant.\n\n"
            .. "The user provided the additional info about how they would like you to respond:\n\n"
            .. "- If you're unsure don't guess and say you don't know instead.\n"
            .. "- Ask question if you need clarification to provide better answer.\n"
            .. "- Think deeply and carefully from first principles step by step.\n"
            .. "- Use Socratic method to improve your thinking and coding skills.\n"
            .. "- Don't elide any code from your output if the answer requires coding.\n"
            .. "- Take a deep breath; You've got this!\n",
        },
        {
          name = "gpt-4o-2024-05-13",
          chat = true,
          command = false,
          -- string with model name or table with model name and parameters
          model = { model = "gpt-4o-2024-05-13", temperature = 1.1, top_p = 1 },
          -- system prompt (use this to specify the persona/role of the AI)
          system_prompt = "You are a general AI assistant.\n\n",
        },
        {
          name = "CodeGPT4-gpt-4o-2024-05-13",
          chat = false,
          command = true,
          -- string with model name or table with model name and parameters
          model = { model = "gpt-4o-2024-05-13", temperature = 0.8, top_p = 1 },
          -- system prompt (use this to specify the persona/role of the AI)
          system_prompt = "You are an AI working as a code editor.\n\n"
            .. "Please AVOID COMMENTARY OUTSIDE OF THE SNIPPET RESPONSE.\n"
            .. "START AND END YOUR ANSWER WITH:\n\n```",
        },
      },
    })
    -- shortcuts might be setup here (see Usage > Shortcuts in Readme)
  end,
}
