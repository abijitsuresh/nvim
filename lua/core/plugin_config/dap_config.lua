require("dapui").setup()

local dap, dapui, dapUIWidgets = require("dap"), require("dapui"), require("dap.ui.widgets")

dap.listeners.before.attach.dapui_config = function()
	dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
	dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
	dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
	dapui.close()
end

vim.keymap.set("n", "<Leader>dc", ":DapContinue<CR>", {})
vim.keymap.set("n", "<Leader>do", ":DapStepOver<CR>", {})
vim.keymap.set("n", "<Leader>di", ":DapStepInto<CR>", {})
vim.keymap.set("n", "<Leader>du", ":DapStepOut<CR>", {})
vim.keymap.set("n", "<Leader>dt", ":DapToggleBreakpoint<CR>", {})
vim.keymap.set("n", "<Leader>dx", ":DapTerminate<CR>", {})
--vim.keymap.set({"n", "v"}, "<Leader>dh", dapUIWidgets.hover(), {})
vim.keymap.set({ "n", "v" }, "<Leader>dh", function()
	dapUIWidgets.hover()
end)
vim.keymap.set("n", "<Leader>df", function()
	local widgets = require("dap.ui.widgets")
	widgets.centered_float(widgets.frames)
end)
vim.keymap.set("n", "<Leader>ds", function()
	local widgets = require("dap.ui.widgets")
	widgets.centered_float(widgets.scopes)
end)
