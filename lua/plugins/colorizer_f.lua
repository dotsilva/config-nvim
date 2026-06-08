vim.pack.add { 'https://github.com/catgoose/nvim-colorizer.lua' }
require('colorizer').setup {
	parsers = {
		hex = {
			default = true, -- enable all hex options
			rgb = false, -- #RGB (3-digit) -- turned off
			rgba = false, -- #RGBA (4-digit) -- turned off
			-- the config above already enables these ones
			-- but i am leting them here for documenting it
			-- rrggbb = true, -- #RRGGBB (6-digit)
			-- rrggbbaa = true, -- #RRGGBBAA (8-digit)
			-- hash_aarrggbb = true, -- #AARRGGBB (QML-style, alpha first)
			-- no_hash = true, -- hex without '#' at word boundaries
		},
		rgb = { enable = true },
		xterm = { enable = true },
		names = {
			enable = false,
		},
	},
}
