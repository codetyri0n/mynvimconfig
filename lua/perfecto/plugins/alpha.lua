local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")
local datetime = os.date("󰃭 %d-%m-%Y   %H:%M:%S")
--local weather = require("weather")

dashboard.section.header.val = {
	"",
	"",
	"",
	"",
	"",

	"NNNNNNNN        NNNNNNNNEEEEEEEEEEEEEEEEEEEEEE     OOOOOOOOO     VVVVVVVV           VVVVVVVVIIIIIIIIIIMMMMMMMM               MMMMMMMM",
	"N:::::::N       N::::::NE::::::::::::::::::::E   OO:::::::::OO   V::::::V           V::::::VI::::::::IM:::::::M             M:::::::M",
	"N::::::::N      N::::::NE::::::::::::::::::::E OO:::::::::::::OO V::::::V           V::::::VI::::::::IM::::::::M           M::::::::M",
	"N:::::::::N     N::::::NEE::::::EEEEEEEEE::::EO:::::::OOO:::::::OV::::::V           V::::::VII::::::IIM:::::::::M         M:::::::::M",
	"N::::::::::N    N::::::N  E:::::E       EEEEEEO::::::O   O::::::O V:::::V           V:::::V   I::::I  M::::::::::M       M::::::::::M",
	"N:::::::::::N   N::::::N  E:::::E             O:::::O     O:::::O  V:::::V         V:::::V    I::::I  M:::::::::::M     M:::::::::::M",
	"N:::::::N::::N  N::::::N  E::::::EEEEEEEEEE   O:::::O     O:::::O   V:::::V       V:::::V     I::::I  M:::::::M::::M   M::::M:::::::M",
	"N::::::N N::::N N::::::N  E:::::::::::::::E   O:::::O     O:::::O    V:::::V     V:::::V      I::::I  M::::::M M::::M M::::M M::::::M",
	"N::::::N  N::::N:::::::N  E:::::::::::::::E   O:::::O     O:::::O     V:::::V   V:::::V       I::::I  M::::::M  M::::M::::M  M::::::M",
	"N::::::N   N:::::::::::N  E::::::EEEEEEEEEE   O:::::O     O:::::O      V:::::V V:::::V        I::::I  M::::::M   M:::::::M   M::::::M",
	"N::::::N    N::::::::::N  E:::::E             O:::::O     O:::::O       V:::::V:::::V         I::::I  M::::::M    M:::::M    M::::::M",
	"N::::::N     N:::::::::N  E:::::E       EEEEEEO::::::O   O::::::O        V:::::::::V          I::::I  M::::::M     MMMMM     M::::::M",
	"N::::::N      N::::::::NEE::::::EEEEEEEE:::::EO:::::::OOO:::::::O         V:::::::V         II::::::IIM::::::M               M::::::M",
	"N::::::N       N:::::::NE::::::::::::::::::::E OO:::::::::::::OO           V:::::V          I::::::::IM::::::M               M::::::M",
	"N::::::N        N::::::NE::::::::::::::::::::E   OO:::::::::OO              V:::V           I::::::::IM::::::M               M::::::M",
	"NNNNNNNN         NNNNNNNEEEEEEEEEEEEEEEEEEEEEE     OOOOOOOOO                 VVV            IIIIIIIIIIMMMMMMMM               MMMMMMMM",
	"",
	"",
	"",
	"",

	"                                              DEVIL'S WORKSHOP|" .. datetime,
}

dashboard.section.buttons.val = {
	dashboard.button("E", "  > New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("R", "  > Recent", ":Telescope oldfiles<CR>"),
	dashboard.button("S", "  > Settings", ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
	dashboard.button("Q", "󰗼  > Quit NVIM", ":qa<CR>"),
}

dashboard.section.footer.val = {
	"       No matter how hard or impossible it is, never lose sight of your goal. – Monkey D Luffy ",
	"",
	"",
}

alpha.setup(dashboard.opts)

vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
