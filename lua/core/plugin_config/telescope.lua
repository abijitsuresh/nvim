require("telescope").setup({
	file_ignore_patterns = {
		"node%_modules/.*",
	},
	extensions = {
		["ui-select"] = {
			require("telescope.themes").get_dropdown({}),
		},
	},
})

local telescope = require("telescope")
local builtin = require("telescope.builtin")
--require('telescope').load_extension('project')

vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
vim.keymap.set("n", "<C-p>", builtin.git_files, {})
vim.keymap.set("n", "<leader><Space>", builtin.oldfiles, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

-- load refactoring Telescope extension
telescope.load_extension("refactoring")
telescope.load_extension("undo")
telescope.load_extension("ui-select")

vim.keymap.set("n", "<leader>u", ":Telescope undo<cr>")

vim.keymap.set({ "n", "x" }, "<leader>rr", function()
	telescope.extensions.refactoring.refactors()
end)

