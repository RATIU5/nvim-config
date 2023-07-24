local wk = require("which-key")
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

wk.register({
	p = {
		name = "Project",
		f = { "<cmd>Telescope find_files<cr>", "Find file in project" },
		v = { "<cmd>Ex<cr>", "Show file viewer" },
		n = { "<cmd>enew<cr>", "New File" },
		s = { "<cmd>w<cr>", "Save File" },
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
