-- import telescope plugin safely
local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
	return
end

local builtin = require("telescope.builtin")

local actions = require("telescope.actions")

telescope.setup({
	-- extensions = {
	-- 	fzf = {
	-- 		fuzzy = true, -- false will only do exact matching
	-- 		override_generic_sorter = true, -- override the generic sorter
	-- 		override_file_sorter = true, -- override the file sorter
	-- 		case_mode = "smart_case", -- or "ignore_case" or "respect_case"
	-- 		-- the default case_mode is "smart_case"
	-- 	},
	-- },
	defaults = {
		mappings = {
			i = {
				-- MAPPINGS
			},
		},
		file_ignore_patterns = { "node_modules" },
	},
	pickers = {
		find_files = {
			hidden = true,
		},
	},
})

-- telescope.load_extension("fzf")
