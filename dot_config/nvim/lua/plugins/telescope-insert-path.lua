return {
  "telescope.nvim",

  dependencies = {
    "kiyoon/telescope-insert-path.nvim",
  },

  config = function()
    local path_actions = require("telescope_insert_path")
    require("telescope").setup({
      defaults = {
        mappings = {
          n = {
            ["["] = path_actions.insert_reltobufpath_visual,
            ["]"] = path_actions.insert_abspath_visual,
            ["{"] = path_actions.insert_reltobufpath_insert,
            ["}"] = path_actions.insert_abspath_insert,
            ["-"] = path_actions.insert_reltobufpath_normal,
            ["="] = path_actions.insert_abspath_normal,
          },
        },
      },
    })
  end,
}
