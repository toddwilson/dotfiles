return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "cmake" })
      end
    end,
  },
  {
    "mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "cmakelang" })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        neocmake = {},
      },
    },
  },
  {
    "Civitasv/cmake-tools.nvim",
    lazy = true,
    keys = {
      { "<leader>mg", "<cmd>CMakeGenerate<cr>", desc = "Build" },
      { "<leader>mb", "<cmd>CMakeBuild<cr>", desc = "Build" },
      { "<leader>mr", "<cmd>CMakeRun<cr>", desc = "Run" },
      { "<leader>md", "<cmd>CMakeDebug<cr>", desc = "Run w/ Debugger" },
      { "<leader>mt", "<cmd>CMakeTest<cr>", desc = "Run w/ Debugger" },
    },
    event = "BufRead",
    config = function()
      require("cmake-tools").setup({})
    end,
  },
}
