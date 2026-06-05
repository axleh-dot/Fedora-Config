require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>v", "<cmd>vsplit<cr>", { desc = "Vertical split" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
