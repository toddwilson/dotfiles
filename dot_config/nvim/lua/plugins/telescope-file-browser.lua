return {
  "nvim-telescope/telescope-file-browser.nvim",
  lazy = true,
  keys = {
    {
      "<leader>sB",
      ":Telescope file_browser path=%:p:h=%:p:h<cr>",
      desc = "Browse Files (Telescope)",
    },
  },
  config = function()
    require("telescope").load_extension("file_browser")
  end,
}
