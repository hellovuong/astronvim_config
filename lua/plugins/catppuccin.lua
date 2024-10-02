return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        require("catppuccin").setup({
				  kitty= true,
			    term_colors = true,
			    transparent_background = false,
			    styles = {
			    	comments = {"italic"},
			    	conditionals = {},
			    	loops = {},
			    	functions = {},
			    	keywords = {},
			    	strings = {},
			    	variables = {},
			    	numbers = {},
			    	booleans = {},
			    	properties = {},
			    	types = {},
			    },
			    color_overrides = {
			    },
        })
    end,
}
