return {
	"goolord/alpha-nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.startify")

		dashboard.section.header.val = {
			[[                                                                          ]],
			[[  _______ _            _____                        _                 _   ]],
			[[ |__   __| |          |  __ \                      | |               | |  ]],
			[[    | |  | |__   ___  | |__) | __ ___   ___ ___  __| |_   _ _ __ __ _| |  ]],
			[[    | |  | '_ \ / _ \ |  ___/ '__/ _ \ / __/ _ \/ _` | | | | '__/ _` | |  ]],
			[[    | |  | | | |  __/ | |   | | | (_) | (_|  __/ (_| | |_| | | | (_| | |  ]],
			[[    |_|  |_| |_|\___| |_|   |_|  \___/ \___\___|\__,_|\__,_|_|  \__,_|_|  ]],
			[[                                                                          ]],
		}

		alpha.setup(dashboard.opts)
	end,
}
