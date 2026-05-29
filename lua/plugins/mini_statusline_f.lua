do
	vim.pack.add({
		{
			src = "https://github.com/nvim-mini/mini.statusline",
			version = "stable",
		},
	})
	local statusline = require("mini.statusline")

	local function custom_diff()
		local summary = vim.b.minidiff_summary or {}
		local add = summary.add or 0
		local change = summary.change or 0
		local delete = summary.delete or 0

		if add == 0 and change == 0 and delete == 0 then
			return ""
		end

		local str = ""
		if add > 0 then
			str = str .. "%#MiniDiffSignAdd#+" .. add .. " "
		end
		if change > 0 then
			str = str .. "%#MiniDiffSignChange#~" .. change .. " "
		end
		if delete > 0 then
			str = str .. "%#MiniDiffSignDelete#-" .. delete .. " "
		end

		return str .. "%#MiniStatuslineDevinfo#"
	end

	local function custom_diagnostics()
		local errors = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.ERROR })
		local warns = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.WARN })
		local infos = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.INFO })
		local hints = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.HINT })

		if errors == 0 and warns == 0 and infos == 0 and hints == 0 then
			return ""
		end

		local str = ""
		if errors > 0 then
			str = str .. "%#DiagnosticError#E:" .. errors .. " "
		end
		if warns > 0 then
			str = str .. "%#DiagnosticWarn#W:" .. warns .. " "
		end
		if infos > 0 then
			str = str .. "%#DiagnosticInfo#I:" .. infos .. " "
		end
		if hints > 0 then
			str = str .. "%#DiagnosticHint#H:" .. hints .. " "
		end

		return str .. "%#MiniStatuslineDevinfo#"
	end

	statusline.setup({
		use_icons = false,
		content = {
			active = function()
				local mode, mode_hl = MiniStatusline.section_mode({ trunc_width = 120 })
				local git = MiniStatusline.section_git({ trunc_width = 40 })
				local diff = custom_diff()
				local diagnostics = custom_diagnostics()
				local filename = MiniStatusline.section_filename({ trunc_width = 140 })
				local fileinfo = MiniStatusline.section_fileinfo({ trunc_width = 120 })
				local location = MiniStatusline.section_location({ trunc_width = 75 })
				local search = MiniStatusline.section_searchcount({ trunc_width = 75 })

				return MiniStatusline.combine_groups({
					{ hl = mode_hl, strings = { mode } },
					{
						hl = "MiniStatuslineDevinfo",
						strings = { git, diff, diagnostics },
					},
					"%<",
					{ hl = mode_hl, strings = { filename } },
					"%=",
					{ hl = mode_hl, strings = { fileinfo } },
					{ hl = mode_hl, strings = { search, location } },
				})
			end,
		},
	})

	statusline.section_location = function()
		return string.format("chars: %d", vim.fn.wordcount().chars)
	end
end
