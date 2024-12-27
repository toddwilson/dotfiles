return {
  "ThePrimeagen/git-worktree.nvim",
  lazy = true,
  config = function()
    require("telescope").load_extension("git_worktree")
  end,
  keys = {
    {
      "<leader>gw",
      function()
        require("telescope").extensions.git_worktree.git_worktrees()
      end,
      desc = "Switch worktree",
    },
  },
}
