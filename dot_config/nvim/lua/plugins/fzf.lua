return {
  "ibhagwan/fzf-lua",
  opts = function(_, opts)
    local fzf = require("fzf-lua")
    local actions = fzf.actions

    -- I use alt-h for aerospace focus, so needed to overwrite hidden toggle here
    return {
      winopts = {
        split = "belowright new",
      },
      files = {
        cwd_prompt = false,
        actions = {
          ["alt-i"] = { actions.toggle_ignore },
          ["alt-u"] = { actions.toggle_hidden },
        },
      },
      grep = {
        actions = {
          ["alt-i"] = { actions.toggle_ignore },
          ["alt-u"] = { actions.toggle_hidden },
        },
      },
    }
  end,
}
