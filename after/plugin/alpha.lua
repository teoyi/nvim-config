local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")
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

dashboard.opts.opts.noautocmd = true
dashboard.config.layout({
	{ type = "padding", val = vim.fn.max({ 2, vim.fn.floor(vim.fn.winheight(0) * 0.3) }) },
	dashboard.section.header,
	{ type = "padding", val = 2 },
	dashboard.section.buttons,
	dashboard.section.footer,
})
alpha.setup(dashboard.config)
