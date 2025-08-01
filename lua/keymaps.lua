-- lua/keymaps.lua

-- Set leader key
vim.g.mapleader = " "

-- Gitsigns
vim.keymap.set("n", "]h", function() require("gitsigns").next_hunk() end)
vim.keymap.set("n", "[h", function() require("gitsigns").prev_hunk() end)
vim.keymap.set("n", "<leader>hs", function() require("gitsigns").stage_hunk() end)
vim.keymap.set("n", "<leader>hr", function() require("gitsigns").reset_hunk() end)
vim.keymap.set("n", "<leader>hp", function() require("gitsigns").preview_hunk() end)
vim.keymap.set("n", "<leader>hb", function() require("gitsigns").blame_line() end)

-- Other examples
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")


