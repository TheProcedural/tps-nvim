return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.keymap.set("n", "<C-b>", ":Neotree toggle<CR>", {})
		vim.keymap.set("n", "<C-n>", ":Neotree focus<CR>", {})
		require("neo-tree").setup({
			filesystem = {
				filtered_items = {
          hide_dotfiles = false,
					hide_gitignored = false,
				},
			},
		})
	end,
}
