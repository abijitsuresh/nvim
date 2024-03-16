local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")
local colors = require("dracula").colors()

local blue = colors.comment
local green = colors.bright_green

vim.api.nvim_set_hl(0, "NeovimDashboardLogo1", { fg = blue })
vim.api.nvim_set_hl(0, "NeovimDashboardLogo2", { fg = green, bg = blue })
vim.api.nvim_set_hl(0, "NeovimDashboardLogo3", { fg = green })

dashboard.section.header.val = {
	[[     █  █     ]],
	[[     ██ ██     ]],
	[[     █████     ]],
	[[     ██ ███     ]],
	[[     █  █     ]],
	[[]],
	[[N  E  O   V  I  M]],
}

dashboard.section.header.opts.hl = {
	{ { "NeovimDashboardLogo1", 6, 8 }, { "NeovimDashboardLogo3", 9, 22 } },
	{ { "NeovimDashboardLogo1", 6, 8 }, { "NeovimDashboardLogo2", 9, 11 }, { "NeovimDashboardLogo3", 12, 24 } },
	{ { "NeovimDashboardLogo1", 6, 11 }, { "NeovimDashboardLogo3", 12, 26 } },
	{ { "NeovimDashboardLogo1", 6, 11 }, { "NeovimDashboardLogo3", 12, 24 } },
	{ { "NeovimDashboardLogo1", 6, 11 }, { "NeovimDashboardLogo3", 12, 22 } },
}

_Gopts = {
	position = "center",
	hl = "Type",
	-- wrap = "overflow";
}

-- Set menu
dashboard.section.buttons.val = {
	-- dashboard.button("SPC j", "󰈚   Restore Session", ":SessionRestore<cr>"),
	dashboard.button("e", "   New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("f", "   Find file", ":Telescope find_files<CR>"),
	dashboard.button("g", "󰱼   Find word", ":Telescope live_grep<CR>"),
	dashboard.button("p", "   Projects", ":Telescope projects<CR>"),
	dashboard.button("r", "󰄉   Recent", ":Telescope oldfiles<CR>"),
	dashboard.button("c", "   Config", ":e $MYVIMRC <CR>"),
	dashboard.button("m", "󱌣   Mason", ":Mason<CR>"),
	dashboard.button("l", "󰒲   Lazy", ":Lazy<CR>"),
	dashboard.button("u", "󰂖   Update plugins", "<cmd>lua require('lazy').sync()<CR>"),
	dashboard.button("q", "   Quit NVIM", ":qa<CR>"),
}

--local function footer()
--return "Mohammed Babiker Babai"
--end

--dashboard.section.footer.val = footer()

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)

require("alpha").setup(dashboard.opts)

vim.api.nvim_create_autocmd("User", {
	pattern = "LazyVimStarted",
	callback = function()
		local stats = require("lazy").stats()
		local count = (math.floor(stats.startuptime * 100) / 100)
		dashboard.section.footer.val = {
			"󱐌 " .. stats.count .. " plugins loaded in " .. count .. " ms",
			" ",
			" ",
		}
		pcall(vim.cmd.AlphaRedraw)
	end,
})
