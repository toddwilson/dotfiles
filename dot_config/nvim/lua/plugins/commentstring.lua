return {
  "JoosepAlviste/nvim-ts-context-commentstring",
  opts = {
    config = {
      -- I didn't like the default /* %s */ style of commenting for cpp
      cpp = "// %s",
      c = "// %s",
    },
  },
}
