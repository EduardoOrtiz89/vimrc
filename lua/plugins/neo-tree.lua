return {
	"nvim-neo-tree/neo-tree.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		's1n7ax/nvim-window-picker',
	},
	keys = {
		{"<C-n>", "<Cmd>NeoTreeFloatToggle<CR>", desc = "NeoTree"},
		{"<Leader>B", "<Cmd>Neotree buffers<CR>", desc = "NeoTree Buffers"},
	},
	config = function() 
		require("neo-tree").setup()
		require'window-picker'.setup()

	end
}
