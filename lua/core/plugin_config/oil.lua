require("oil").setup()
vim.keymap.set("n", "<leader>-", require("oil").open, { desc = "Open parent directory" })
