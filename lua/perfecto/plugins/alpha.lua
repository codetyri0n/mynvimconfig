local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")
local datetime = os.date("󰃭 %d-%m-%Y   %H:%M:%S")
local weather = require("weather")

dashboard.section.header.val = {
	"",
	"",
	"",
	"",
	"",
	"         ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗",
	"         ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║",
	"         ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║",
	"         ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║",
	"         ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║",
	"         ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝",
	"",
	"GHOST COMPUTER | " .. datetime .. " | " .. weather.strfeed .. " | " .. weather.cond,
}

dashboard.section.buttons.val = {
	dashboard.button("E", "  > New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("R", "  > Recent", ":Telescope oldfiles<CR>"),
	dashboard.button("S", "  > Settings", ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
	dashboard.button("Q", "󰗼  > Quit NVIM", ":qa<CR>"),
}

dashboard.section.footer.val = {
	"The One Who Took The First Napkin Determines Everything In This World",
	"",
	"      Only The Results! In This World, Only The Results Matter!",
}

alpha.setup(dashboard.opts)

vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
