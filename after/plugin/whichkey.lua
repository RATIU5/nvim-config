local wk = require("which-key")
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
local builtin = require("telescope.builtin")

wk.register({
	f = {
		name = "File",
		n = { "<cmd>enew<cr>", "New file" },
		s = { function() builtin.grep_string({ search = vim.fn.input("Grep > ") }) end, "Search in file" },
		o = { "<cmd>gg=G<cr>", "Format file" },
		f = { "<cmd>Telescope find_files<cr>", "Find file in project" },
		p = { "<cmd>Telescope git_files<cr>", "Git files" },
		s = { "<cmd>w<cr>", "Save file" },
	},
	v = {
		name = "View",
		v = { "<cmd>Ex<cr>", "Show viewer" },
	},
	h = { 
		name = "Harpoon",
		a = { mark.add_file, "Add file" },
		e = { ui.toggle_quick_menu, "Toggle quick menu" },
		["1"] = { function() ui.nav_file(1) end, "Navigate to file 1" },
		["2"] = { function() ui.nav_file(2) end, "Navigate to file 2" },
		["3"] = { function() ui.nav_file(3) end, "Navigate to file 3" },
		["4"] = { function() ui.nav_file(4) end, "Navigate to file 4" },
	},
	g = { 
		name = "Git",
		s = { "<cmd>Git<cr>", "Git" },
		a = { "<cmd>Git add *<cr>", "git add *" },
	},
	

}, { prefix = "<leader>" })
