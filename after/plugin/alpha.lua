local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")
local section = dashboard.section
local fn = vim.fn
local config = dashboard.config
local marginTopPercent = 0.3
local headerPadding = fn.max({ 2, fn.floor(fn.winheight(0) * marginTopPercent) })

dashboard.section.header.val = {
	[[　　　 　　/＾>》, -―‐‐＜＾}]],
	[[　　　 　./:::/,≠´::::::ヽ.]],
	[[　　　　/::::〃::::／}::丿ハ]],
	[[　　　./:::::i{l|／　ﾉ／ }::}]],
	[[　　 /:::::::瓜イ＞　´＜ ,:ﾉ]],
	[[　 ./::::::|ﾉﾍ.{､　(_ﾌ_ノﾉイ＿]],
	[[　 |:::::::|／}｀ｽ /          /]],
	[[.　|::::::|(_:::つ/ ThinkPad /　neovim!]],
	[[.￣￣￣￣￣￣￣＼/＿＿＿＿＿/￣￣￣￣￣]],
}

dashboard.section.buttons.val = {
	dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
	dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
	dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.vim<CR>"),
	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

local function footer()
	return "Don't Stop Until You are Proud..."
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

-- dashboard.opts.opts.noautocmd = true
-- alpha.setup(dashboard.opts)

config.layout = {
	{ type = "padding", val = headerPadding },
	section.header,
	{ type = "padding", val = 2 },
	section.buttons,
	section.footer,
}

alpha.setup(config)
