-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.conceallevel = 2 -- Hide * markup for bold and italic, but not markers with substitutions

opt.scrolloff = 8 -- Show at least 8 lines when scroling near the edges of the buffer

opt.cmdheight = 0 -- Don't show command line unless we're actively using it

vim.g.snacks_animate = false
