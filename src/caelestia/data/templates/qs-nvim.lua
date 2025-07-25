
local colors = {
	bg = "{{ $background }}",
	fg = "{{ $onSurface }}",
	black = "{{ $surface }}",
	red = "{{ $error }}",
	green = "{{ $primary }}",
	yellow = "{{ $tertiary }}",
	blue = "{{ $onPrimaryContainer }}",
	magenta = "{{ $onSecondaryContainer }}",
	cyan = "{{ $secondary }}",
	white = "{{ $onSurface }}",
	bright_black = "{{ $surfaceBright }}",
	bright_red = "{{ $error }}",
	bright_green = "{{ $primary }}",
	bright_yellow = "{{ $tertiary }}",
	bright_blue = "{{ $onPrimaryContainer }}",
	bright_magenta = "{{ $onSecondaryContainer }}",
	bright_cyan = "{{ $secondary }}",
	bright_white = "{{ $onSurface }}",
}

vim.cmd("hi clear")
vim.o.background = "dark"
vim.o.termguicolors = true
vim.g.colors_name = "qs-nvim"

local set = function(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

-- Basic highlights
set("Normal", { fg = colors.fg, bg = colors.bg })
set("Comment", { fg = colors.bright_black, italic = true })
set("Constant", { fg = colors.cyan })
set("String", { fg = colors.green })
set("Identifier", { fg = colors.red })
set("Statement", { fg = colors.magenta })
set("PreProc", { fg = colors.yellow })
set("Type", { fg = colors.blue })
set("Special", { fg = colors.bright_magenta })
set("Underlined", { fg = colors.cyan, underline = true })
set("Todo", { fg = colors.bg, bg = colors.yellow, bold = true })

-- UI Elements
set("LineNr", { fg = colors.bright_black })
set("CursorLineNr", { fg = colors.white, bold = true })
set("Visual", { bg = colors.bright_black })
set("Search", { bg = colors.yellow, fg = colors.bg })
set("StatusLine", { fg = colors.fg, bg = colors.bright_black })
set("VertSplit", { fg = colors.bright_black })
set("Pmenu", { fg = colors.fg, bg = colors.bright_black })
set("PmenuSel", { fg = colors.bg, bg = colors.blue })
