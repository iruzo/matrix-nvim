local matrix = require("matrix.colors")

local theme = {}

theme.loadSyntax = function()
	-- Syntax highlight groups
	local syntax = {
		Type = { fg = matrix.matrix9_gui }, -- int, long, char, etc.
		StorageClass = { fg = matrix.matrix9_gui }, -- static, register, volatile, etc.
		Structure = { fg = matrix.matrix9_gui }, -- struct, union, enum, etc.
		Constant = { fg = matrix.matrix4_gui }, -- any constant
		Character = { fg = matrix.matrix14_gui }, -- any character constant: 'c', '\n'
		Number = { fg = matrix.matrix15_gui }, -- a number constant: 5
		Boolean = { fg = matrix.matrix9_gui }, -- a boolean constant: TRUE, false
		Float = { fg = matrix.matrix15_gui }, -- a floating point constant: 2.3e10
		Statement = { fg = matrix.matrix9_gui }, -- any statement
		Label = { fg = matrix.matrix9_gui }, -- case, default, etc.
		Operator = { fg = matrix.matrix9_gui }, -- sizeof", "+", "*", etc.
		Exception = { fg = matrix.matrix9_gui }, -- try, catch, throw
		PreProc = { fg = matrix.matrix9_gui }, -- generic Preprocessor
		Include = { fg = matrix.matrix9_gui }, -- preprocessor #include
		Define = { fg = matrix.matrix9_gui }, -- preprocessor #define
		Macro = { fg = matrix.matrix9_gui }, -- same as Define
		Typedef = { fg = matrix.matrix9_gui }, -- A typedef
		PreCondit = { fg = matrix.matrix13_gui }, -- preprocessor #if, #else, #endif, etc.
		Special = { fg = matrix.matrix4_gui }, -- any special symbol
		SpecialChar = { fg = matrix.matrix13_gui }, -- special character in a constant
		Tag = { fg = matrix.matrix4_gui }, -- you can use CTRL-] on this
		Delimiter = { fg = matrix.matrix6_gui }, -- character that needs attention like , or .
		SpecialComment = { fg = matrix.matrix8_gui }, -- special things inside a comment
		Debug = { fg = matrix.matrix11_gui }, -- debugging statements
		Underlined = { fg = matrix.matrix14_gui, bg = matrix.none, style = "underline" }, -- text that stands out, HTML links
		Ignore = { fg = matrix.matrix1_gui }, -- left blank, hidden
		Error = { fg = matrix.matrix11_gui, bg = matrix.none, style = "bold,underline" }, -- any erroneous construct
		Todo = { fg = matrix.matrix13_gui, bg = matrix.none, style = "bold,italic" }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
		Conceal = { fg = matrix.none, bg = matrix.matrix0_gui },

		htmlLink = { fg = matrix.matrix14_gui, style = "underline" },
		htmlH1 = { fg = matrix.matrix8_gui, style = "bold" },
		htmlH2 = { fg = matrix.matrix11_gui, style = "bold" },
		htmlH3 = { fg = matrix.matrix14_gui, style = "bold" },
		htmlH4 = { fg = matrix.matrix15_gui, style = "bold" },
		htmlH5 = { fg = matrix.matrix9_gui, style = "bold" },
		markdownH1 = { fg = matrix.matrix8_gui, style = "bold" },
		markdownH2 = { fg = matrix.matrix11_gui, style = "bold" },
		markdownH3 = { fg = matrix.matrix14_gui, style = "bold" },
		markdownH1Delimiter = { fg = matrix.matrix8_gui },
		markdownH2Delimiter = { fg = matrix.matrix11_gui },
		markdownH3Delimiter = { fg = matrix.matrix14_gui },
	}

	-- Italic comments
	if vim.g.matrix_italic == false then
		syntax.Comment = { fg = matrix.matrix3_gui_bright } -- normal comments
		syntax.Conditional = { fg = matrix.matrix9_gui } -- normal if, then, else, endif, switch, etc.
		syntax.Function = { fg = matrix.matrix8_gui } -- normal function names
		syntax.Identifier = { fg = matrix.matrix9_gui } -- any variable name
		syntax.Keyword = { fg = matrix.matrix9_gui } -- normal for, do, while, etc.
		syntax.Repeat = { fg = matrix.matrix9_gui } -- normal any other keyword
		syntax.String = { fg = matrix.matrix14_gui } -- any string
	else
		syntax.Comment = { fg = matrix.matrix3_gui_bright, bg = matrix.none, style = "italic" } -- italic comments
		syntax.Conditional = { fg = matrix.matrix9_gui, bg = matrix.none, style = "italic" } -- italic if, then, else, endif, switch, etc.
		syntax.Function = { fg = matrix.matrix8_gui, bg = matrix.none, style = "italic" } -- italic funtion names
		syntax.Identifier = { fg = matrix.matrix9_gui, bg = matrix.none, style = "italic" } -- any variable name
		syntax.Keyword = { fg = matrix.matrix9_gui, bg = matrix.none, style = "italic" } -- italic for, do, while, etc.
		syntax.Repeat = { fg = matrix.matrix9_gui, bg = matrix.none, style = "italic" } -- italic any other keyword
		syntax.String = { fg = matrix.matrix14_gui, bg = matrix.none, style = "italic" } -- any string
	end

	return syntax
end

theme.loadEditor = function()
	-- Editor highlight groups

	local editor = {
		NormalFloat = { fg = matrix.matrix4_gui, bg = matrix.float }, -- normal text and background color
		FloatBorder = { fg = matrix.matrix4_gui, bg = matrix.float }, -- normal text and background color
		ColorColumn = { fg = matrix.none, bg = matrix.matrix1_gui }, --  used for the columns set with 'colorcolumn'
		Conceal = { fg = matrix.matrix1_gui }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor = { fg = matrix.matrix4_gui, bg = matrix.none, style = "reverse" }, -- the character under the cursor
		CursorIM = { fg = matrix.matrix5_gui, bg = matrix.none, style = "reverse" }, -- like Cursor, but used when in IME mode
		Directory = { fg = matrix.matrix7_gui, bg = matrix.none }, -- directory names (and other special names in listings)
		DiffAdd = { fg = matrix.matrix14_gui, bg = matrix.none, style = "reverse" }, -- diff mode: Added line
		DiffChange = { fg = matrix.matrix13_gui, bg = matrix.none, style = "reverse" }, --  diff mode: Changed line
		DiffDelete = { fg = matrix.matrix11_gui, bg = matrix.none, style = "reverse" }, -- diff mode: Deleted line
		DiffText = { fg = matrix.matrix15_gui, bg = matrix.none, style = "reverse" }, -- diff mode: Changed text within a changed line
		EndOfBuffer = { fg = matrix.matrix1_gui },
		ErrorMsg = { fg = matrix.none },
		Folded = { fg = matrix.matrix3_gui_bright, bg = matrix.none, style = "italic" },
		FoldColumn = { fg = matrix.matrix7_gui },
		IncSearch = { fg = matrix.matrix6_gui, bg = matrix.matrix10_gui },
		LineNr = { fg = matrix.matrix3_gui_bright },
		CursorLineNr = { fg = matrix.matrix4_gui },
		MatchParen = { fg = matrix.matrix15_gui, bg = matrix.none, style = "bold" },
		ModeMsg = { fg = matrix.matrix4_gui },
		MoreMsg = { fg = matrix.matrix4_gui },
		NonText = { fg = matrix.matrix1_gui },
		Pmenu = { fg = matrix.matrix4_gui, bg = matrix.matrix2_gui },
		PmenuSel = { fg = matrix.matrix4_gui, bg = matrix.matrix10_gui },
		PmenuSbar = { fg = matrix.matrix4_gui, bg = matrix.matrix2_gui },
		PmenuThumb = { fg = matrix.matrix4_gui, bg = matrix.matrix4_gui },
		Question = { fg = matrix.matrix14_gui },
		QuickFixLine = { fg = matrix.matrix4_gui, bg = matrix.none, style = "reverse" },
		qfLineNr = { fg = matrix.matrix4_gui, bg = matrix.none, style = "reverse" },
		Search = { fg = matrix.matrix10_gui, bg = matrix.matrix6_gui, style = "reverse" },
		SpecialKey = { fg = matrix.matrix9_gui },
		SpellBad = { fg = matrix.matrix11_gui, bg = matrix.none, style = "italic,undercurl" },
		SpellCap = { fg = matrix.matrix7_gui, bg = matrix.none, style = "italic,undercurl" },
		SpellLocal = { fg = matrix.matrix8_gui, bg = matrix.none, style = "italic,undercurl" },
		SpellRare = { fg = matrix.matrix9_gui, bg = matrix.none, style = "italic,undercurl" },
		StatusLine = { fg = matrix.matrix4_gui, bg = matrix.matrix2_gui },
		StatusLineNC = { fg = matrix.matrix4_gui, bg = matrix.matrix1_gui },
		StatusLineTerm = { fg = matrix.matrix4_gui, bg = matrix.matrix2_gui },
		StatusLineTermNC = { fg = matrix.matrix4_gui, bg = matrix.matrix1_gui },
		TabLineFill = { fg = matrix.matrix4_gui, bg = matrix.none },
		TablineSel = { fg = matrix.matrix1_gui, bg = matrix.matrix9_gui },
		Tabline = { fg = matrix.matrix4_gui, bg = matrix.matrix1_gui },
		Title = { fg = matrix.matrix14_gui, bg = matrix.none, style = "bold" },
		Visual = { fg = matrix.none, bg = matrix.matrix2_gui },
		VisualNOS = { fg = matrix.none, bg = matrix.matrix2_gui },
		WarningMsg = { fg = matrix.matrix15_gui },
		WildMenu = { fg = matrix.matrix12_gui, bg = matrix.none, style = "bold" },
		CursorColumn = { fg = matrix.none, bg = matrix.cursorlinefg },
		CursorLine = { fg = matrix.none, bg = matrix.cursorlinefg },
		ToolbarLine = { fg = matrix.matrix4_gui, bg = matrix.matrix1_gui },
		ToolbarButton = { fg = matrix.matrix4_gui, bg = matrix.none, style = "bold" },
		NormalMode = { fg = matrix.matrix4_gui, bg = matrix.none, style = "reverse" },
		InsertMode = { fg = matrix.matrix14_gui, bg = matrix.none, style = "reverse" },
		ReplacelMode = { fg = matrix.matrix11_gui, bg = matrix.none, style = "reverse" },
		VisualMode = { fg = matrix.matrix9_gui, bg = matrix.none, style = "reverse" },
		CommandMode = { fg = matrix.matrix4_gui, bg = matrix.none, style = "reverse" },
		Warnings = { fg = matrix.matrix15_gui },

		healthError = { fg = matrix.matrix11_gui },
		healthSuccess = { fg = matrix.matrix14_gui },
		healthWarning = { fg = matrix.matrix15_gui },

		-- dashboard
		DashboardShortCut = { fg = matrix.matrix7_gui },
		DashboardHeader = { fg = matrix.matrix9_gui },
		DashboardCenter = { fg = matrix.matrix8_gui },
		DashboardFooter = { fg = matrix.matrix14_gui, style = "italic" },

		-- BufferLine
		BufferLineIndicatorSelected = { fg = matrix.matrix0_gui },
		BufferLineFill = { bg = matrix.matrix0_gui },
	}

	-- Options:

	--Set transparent background
	if vim.g.matrix_disable_background then
		editor.Normal = { fg = matrix.matrix4_gui, bg = matrix.none } -- normal text and background color
		editor.SignColumn = { fg = matrix.matrix4_gui, bg = matrix.none }
	else
		editor.Normal = { fg = matrix.matrix4_gui, bg = matrix.matrix0_gui } -- normal text and background color
		editor.SignColumn = { fg = matrix.matrix4_gui, bg = matrix.matrix0_gui }
	end

	-- Remove window split borders
	if vim.g.matrix_borders then
		editor.VertSplit = { fg = matrix.matrix2_gui }
	else
		editor.VertSplit = { fg = matrix.matrix0_gui }
	end

	return editor
end

theme.loadTerminal = function()
	vim.g.terminal_color_0 = matrix.matrix1_gui
	vim.g.terminal_color_1 = matrix.matrix11_gui
	vim.g.terminal_color_2 = matrix.matrix14_gui
	vim.g.terminal_color_3 = matrix.matrix13_gui
	vim.g.terminal_color_4 = matrix.matrix9_gui
	vim.g.terminal_color_5 = matrix.matrix15_gui
	vim.g.terminal_color_6 = matrix.matrix8_gui
	vim.g.terminal_color_7 = matrix.matrix5_gui
	vim.g.terminal_color_8 = matrix.matrix3_gui
	vim.g.terminal_color_9 = matrix.matrix11_gui
	vim.g.terminal_color_10 = matrix.matrix14_gui
	vim.g.terminal_color_11 = matrix.matrix13_gui
	vim.g.terminal_color_12 = matrix.matrix9_gui
	vim.g.terminal_color_13 = matrix.matrix15_gui
	vim.g.terminal_color_14 = matrix.matrix7_gui
	vim.g.terminal_color_15 = matrix.matrix6_gui
end

theme.loadTreeSitter = function()
	-- TreeSitter highlight groups

	local treesitter = {
		TSAnnotation = { fg = matrix.matrix12_gui }, -- For C++/Dart attributes, annotations thatcan be attached to the code to denote some kind of meta information.
		TSConstructor = { fg = matrix.matrix9_gui }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
		TSConstant = { fg = matrix.matrix13_gui }, -- For constants
		TSFloat = { fg = matrix.matrix15_gui }, -- For floats
		TSNumber = { fg = matrix.matrix15_gui }, -- For all number

		TSAttribute = { fg = matrix.matrix15_gui }, -- (unstable) TODO: docs
		TSVariable = { fg = matrix.matrix4_gui, style = "bold" }, -- Any variable name that does not have another highlight.
		TSVariableBuiltin = { fg = matrix.matrix4_gui, style = "bold" },
		TSBoolean = { fg = matrix.matrix9_gui, style = "bold" }, -- For booleans.
		TSConstBuiltin = { fg = matrix.matrix7_gui, style = "bold" }, -- For constant that are built in the language: `nil` in Lua.
		TSConstMacro = { fg = matrix.matrix7_gui, style = "bold" }, -- For constants that are defined by macros: `NULL` in C.
		TSError = { fg = matrix.matrix11_gui }, -- For syntax/parser errors.
		TSException = { fg = matrix.matrix15_gui }, -- For exception related keywords.
		TSFuncMacro = { fg = matrix.matrix7_gui }, -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
		TSInclude = { fg = matrix.matrix9_gui }, -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
		TSLabel = { fg = matrix.matrix15_gui }, -- For labels: `label:` in C and `:label:` in Lua.
		TSOperator = { fg = matrix.matrix9_gui }, -- For any operator: `+`, but also `->` and `*` in C.
		TSParameter = { fg = matrix.matrix10_gui }, -- For parameters of a function.
		TSParameterReference = { fg = matrix.matrix10_gui }, -- For references to parameters of a function.
		TSPunctDelimiter = { fg = matrix.matrix8_gui }, -- For delimiters ie: `.`
		TSPunctBracket = { fg = matrix.matrix8_gui }, -- For brackets and parens.
		TSPunctSpecial = { fg = matrix.matrix8_gui }, -- For special punctutation that does not fall in the catagories before.
		TSSymbol = { fg = matrix.matrix15_gui }, -- For identifiers referring to symbols or atoms.
		TSType = { fg = matrix.matrix9_gui }, -- For types.
		TSTypeBuiltin = { fg = matrix.matrix9_gui }, -- For builtin types.
		TSTag = { fg = matrix.matrix4_gui }, -- Tags like html tag names.
		TSTagDelimiter = { fg = matrix.matrix15_gui }, -- Tag delimiter like `<` `>` `/`
		TSText = { fg = matrix.matrix4_gui }, -- For strings considematrix11_gui text in a markup language.
		TSTextReference = { fg = matrix.matrix15_gui }, -- FIXME
		TSEmphasis = { fg = matrix.matrix10_gui }, -- For text to be represented with emphasis.
		TSUnderline = { fg = matrix.matrix4_gui, bg = matrix.none, style = "underline" }, -- For text to be represented with an underline.
		TSTitle = { fg = matrix.matrix10_gui, bg = matrix.none, style = "bold" }, -- Text that is part of a title.
		TSLiteral = { fg = matrix.matrix4_gui }, -- Literal text.
		TSURI = { fg = matrix.matrix14_gui }, -- Any URI like a link or email.
		TSAnnotation = { fg = matrix.matrix11_gui }, -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
	}

	if vim.g.matrix_italic == false then
		-- Comments
		treesitter.TSComment = { fg = matrix.matrix3_gui_bright }
		-- Conditionals
		treesitter.TSConditional = { fg = matrix.matrix9_gui } -- For keywords related to conditionnals.
		-- Function names
		treesitter.TSFunction = { fg = matrix.matrix8_gui } -- For fuction (calls and definitions).
		treesitter.TSMethod = { fg = matrix.matrix7_gui } -- For method calls and definitions.
		treesitter.TSFuncBuiltin = { fg = matrix.matrix8_gui }
		-- Namespaces and property accessors
		treesitter.TSNamespace = { fg = matrix.matrix4_gui } -- For identifiers referring to modules and namespaces.
		treesitter.TSField = { fg = matrix.matrix4_gui } -- For fields in literals
		treesitter.TSProperty = { fg = matrix.matrix10_gui } -- Same as `TSField`
		-- Language keywords
		treesitter.TSKeyword = { fg = matrix.matrix9_gui } -- For keywords that don't fall in other categories.
		treesitter.TSKeywordFunction = { fg = matrix.matrix8_gui }
		treesitter.TSKeywordReturn = { fg = matrix.matrix8_gui }
		treesitter.TSKeywordOperator = { fg = matrix.matrix8_gui }
		treesitter.TSRepeat = { fg = matrix.matrix9_gui } -- For keywords related to loops.
		-- Strings
		treesitter.TSString = { fg = matrix.matrix14_gui } -- For strings.
		treesitter.TSStringRegex = { fg = matrix.matrix7_gui } -- For regexes.
		treesitter.TSStringEscape = { fg = matrix.matrix15_gui } -- For escape characters within a string.
		treesitter.TSCharacter = { fg = matrix.matrix14_gui } -- For characters.
	else
		-- Comments
		treesitter.TSComment = { fg = matrix.matrix3_gui_bright, style = "italic" }
		-- Conditionals
		treesitter.TSConditional = { fg = matrix.matrix9_gui, style = "italic" } -- For keywords related to conditionnals.
		-- Function names
		treesitter.TSFunction = { fg = matrix.matrix8_gui, style = "italic" } -- For fuction (calls and definitions).
		treesitter.TSMethod = { fg = matrix.matrix7_gui, style = "italic" } -- For method calls and definitions.
		treesitter.TSFuncBuiltin = { fg = matrix.matrix8_gui, style = "italic" }
		-- Namespaces and property accessors
		treesitter.TSNamespace = { fg = matrix.matrix4_gui, style = "italic" } -- For identifiers referring to modules and namespaces.
		treesitter.TSField = { fg = matrix.matrix4_gui, style = "italic" } -- For fields.
		treesitter.TSProperty = { fg = matrix.matrix10_gui, style = "italic" } -- Same as `TSField`, but when accessing, not declaring.
		-- Language keywords
		treesitter.TSKeyword = { fg = matrix.matrix9_gui, style = "italic" } -- For keywords that don't fall in other categories.
		treesitter.TSKeywordFunction = { fg = matrix.matrix8_gui, style = "italic" }
		treesitter.TSKeywordReturn = { fg = matrix.matrix8_gui, style = "italic" }
		treesitter.TSKeywordOperator = { fg = matrix.matrix8_gui, style = "italic" }
		treesitter.TSRepeat = { fg = matrix.matrix9_gui, style = "italic" } -- For keywords related to loops.
		-- Strings
		treesitter.TSString = { fg = matrix.matrix14_gui, style = "italic" } -- For strings.
		treesitter.TSStringRegex = { fg = matrix.matrix7_gui, style = "italic" } -- For regexes.
		treesitter.TSStringEscape = { fg = matrix.matrix15_gui, style = "italic" } -- For escape characters within a string.
		treesitter.TSCharacter = { fg = matrix.matrix14_gui, style = "italic" } -- For characters.
	end

	return treesitter
end

theme.loadLSP = function()
	-- Lsp highlight groups

	local lsp = {
		LspDiagnosticsDefaultError = { fg = matrix.matrix11_gui }, -- used for "Error" diagnostic virtual text
		LspDiagnosticsSignError = { fg = matrix.matrix11_gui }, -- used for "Error" diagnostic signs in sign column
		LspDiagnosticsFloatingError = { fg = matrix.matrix11_gui }, -- used for "Error" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextError = { fg = matrix.matrix11_gui }, -- Virtual text "Error"
		LspDiagnosticsUnderlineError = { style = "undercurl", sp = matrix.matrix11_gui }, -- used to underline "Error" diagnostics.
		LspDiagnosticsDefaultWarning = { fg = matrix.matrix15_gui }, -- used for "Warning" diagnostic signs in sign column
		LspDiagnosticsSignWarning = { fg = matrix.matrix15_gui }, -- used for "Warning" diagnostic signs in sign column
		LspDiagnosticsFloatingWarning = { fg = matrix.matrix15_gui }, -- used for "Warning" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextWarning = { fg = matrix.matrix15_gui }, -- Virtual text "Warning"
		LspDiagnosticsUnderlineWarning = { style = "undercurl", sp = matrix.matrix15_gui }, -- used to underline "Warning" diagnostics.
		LspDiagnosticsDefaultInformation = { fg = matrix.matrix10_gui }, -- used for "Information" diagnostic virtual text
		LspDiagnosticsSignInformation = { fg = matrix.matrix10_gui }, -- used for "Information" diagnostic signs in sign column
		LspDiagnosticsFloatingInformation = { fg = matrix.matrix10_gui }, -- used for "Information" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextInformation = { fg = matrix.matrix10_gui }, -- Virtual text "Information"
		LspDiagnosticsUnderlineInformation = { style = "undercurl", sp = matrix.matrix10_gui }, -- used to underline "Information" diagnostics.
		LspDiagnosticsDefaultHint = { fg = matrix.matrix9_gui }, -- used for "Hint" diagnostic virtual text
		LspDiagnosticsSignHint = { fg = matrix.matrix9_gui }, -- used for "Hint" diagnostic signs in sign column
		LspDiagnosticsFloatingHint = { fg = matrix.matrix9_gui }, -- used for "Hint" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextHint = { fg = matrix.matrix9_gui }, -- Virtual text "Hint"
		LspDiagnosticsUnderlineHint = { style = "undercurl", sp = matrix.matrix10_gui }, -- used to underline "Hint" diagnostics.
		LspReferenceText = { fg = matrix.matrix4_gui, bg = matrix.matrix1_gui }, -- used for highlighting "text" references
		LspReferenceRead = { fg = matrix.matrix4_gui, bg = matrix.matrix1_gui }, -- used for highlighting "read" references
		LspReferenceWrite = { fg = matrix.matrix4_gui, bg = matrix.matrix1_gui }, -- used for highlighting "write" references

		DiagnosticError = { link = "LspDiagnosticsDefaultError" },
		DiagnosticWarn = { link = "LspDiagnosticsDefaultWarning" },
		DiagnosticInfo = { link = "LspDiagnosticsDefaultInformation" },
		DiagnosticHint = { link = "LspDiagnosticsDefaultHint" },
		DiagnosticVirtualTextWarn = { link = "LspDiagnosticsVirtualTextWarning" },
		DiagnosticUnderlineWarn = { link = "LspDiagnosticsUnderlineWarning" },
		DiagnosticFloatingWarn = { link = "LspDiagnosticsFloatingWarning" },
		DiagnosticSignWarn = { link = "LspDiagnosticsSignWarning" },
		DiagnosticVirtualTextError = { link = "LspDiagnosticsVirtualTextError" },
		DiagnosticUnderlineError = { link = "LspDiagnosticsUnderlineError" },
		DiagnosticFloatingError = { link = "LspDiagnosticsFloatingError" },
		DiagnosticSignError = { link = "LspDiagnosticsSignError" },
		DiagnosticVirtualTextInfo = { link = "LspDiagnosticsVirtualTextInformation" },
		DiagnosticUnderlineInfo = { link = "LspDiagnosticsUnderlineInformation" },
		DiagnosticFloatingInfo = { link = "LspDiagnosticsFloatingInformation" },
		DiagnosticSignInfo = { link = "LspDiagnosticsSignInformation" },
		DiagnosticVirtualTextHint = { link = "LspDiagnosticsVirtualTextHint" },
		DiagnosticUnderlineHint = { link = "LspDiagnosticsUnderlineHint" },
		DiagnosticFloatingHint = { link = "LspDiagnosticsFloatingHint" },
		DiagnosticSignHint = { link = "LspDiagnosticsSignHint" },
	}

	return lsp
end

theme.loadPlugins = function()
	-- Plugins highlight groups

	local plugins = {

		-- LspTrouble
		LspTroubleText = { fg = matrix.matrix4_gui },
		LspTroubleCount = { fg = matrix.matrix9_gui, bg = matrix.matrix10_gui },
		LspTroubleNormal = { fg = matrix.matrix4_gui, bg = matrix.sidebar },

		-- Diff
		diffAdded = { fg = matrix.matrix14_gui },
		diffRemoved = { fg = matrix.matrix11_gui },
		diffChanged = { fg = matrix.matrix15_gui },
		diffOldFile = { fg = matrix.yelow },
		diffNewFile = { fg = matrix.matrix12_gui },
		diffFile = { fg = matrix.matrix7_gui },
		diffLine = { fg = matrix.matrix3_gui },
		diffIndexLine = { fg = matrix.matrix9_gui },

		-- Neogit
		NeogitBranch = { fg = matrix.matrix10_gui },
		NeogitRemote = { fg = matrix.matrix9_gui },
		NeogitHunkHeader = { fg = matrix.matrix8_gui },
		NeogitHunkHeaderHighlight = { fg = matrix.matrix8_gui, bg = matrix.matrix1_gui },
		NeogitDiffContextHighlight = { bg = matrix.matrix1_gui },
		NeogitDiffDeleteHighlight = { fg = matrix.matrix11_gui, style = "reverse" },
		NeogitDiffAddHighlight = { fg = matrix.matrix14_gui, style = "reverse" },

		-- GitGutter
		GitGutterAdd = { fg = matrix.matrix14_gui }, -- diff mode: Added line |diff.txt|
		GitGutterChange = { fg = matrix.matrix15_gui }, -- diff mode: Changed line |diff.txt|
		GitGutterDelete = { fg = matrix.matrix11_gui }, -- diff mode: Deleted line |diff.txt|

		-- GitSigns
		GitSignsAdd = { fg = matrix.matrix14_gui }, -- diff mode: Added line |diff.txt|
		GitSignsAddNr = { fg = matrix.matrix14_gui }, -- diff mode: Added line |diff.txt|
		GitSignsAddLn = { fg = matrix.matrix14_gui }, -- diff mode: Added line |diff.txt|
		GitSignsChange = { fg = matrix.matrix15_gui }, -- diff mode: Changed line |diff.txt|
		GitSignsChangeNr = { fg = matrix.matrix15_gui }, -- diff mode: Changed line |diff.txt|
		GitSignsChangeLn = { fg = matrix.matrix15_gui }, -- diff mode: Changed line |diff.txt|
		GitSignsDelete = { fg = matrix.matrix11_gui }, -- diff mode: Deleted line |diff.txt|
		GitSignsDeleteNr = { fg = matrix.matrix11_gui }, -- diff mode: Deleted line |diff.txt|
		GitSignsDeleteLn = { fg = matrix.matrix11_gui }, -- diff mode: Deleted line |diff.txt|

		-- Telescope
		TelescopePromptBorder = { fg = matrix.matrix8_gui },
		TelescopeResultsBorder = { fg = matrix.matrix9_gui },
		TelescopePreviewBorder = { fg = matrix.matrix14_gui },
		TelescopeSelectionCaret = { fg = matrix.matrix9_gui },
		TelescopeSelection = { fg = matrix.matrix9_gui },
		TelescopeMatching = { fg = matrix.matrix8_gui },

		-- NvimTree
		NvimTreeRootFolder = { fg = matrix.matrix7_gui, style = "bold" },
		NvimTreeGitDirty = { fg = matrix.matrix15_gui },
		NvimTreeGitNew = { fg = matrix.matrix14_gui },
		NvimTreeImageFile = { fg = matrix.matrix15_gui },
		NvimTreeExecFile = { fg = matrix.matrix14_gui },
		NvimTreeSpecialFile = { fg = matrix.matrix9_gui, style = "underline" },
		NvimTreeFolderName = { fg = matrix.matrix10_gui },
		NvimTreeEmptyFolderName = { fg = matrix.matrix1_gui },
		NvimTreeFolderIcon = { fg = matrix.matrix4_gui },
		NvimTreeIndentMarker = { fg = matrix.matrix1_gui },
		LspDiagnosticsError = { fg = matrix.matrix11_gui },
		LspDiagnosticsWarning = { fg = matrix.matrix15_gui },
		LspDiagnosticsInformation = { fg = matrix.matrix10_gui },
		LspDiagnosticsHint = { fg = matrix.matrix9_gui },

		-- WhichKey
		WhichKey = { fg = matrix.matrix4_gui, style = "bold" },
		WhichKeyGroup = { fg = matrix.matrix4_gui },
		WhichKeyDesc = { fg = matrix.matrix7_gui, style = "italic" },
		WhichKeySeperator = { fg = matrix.matrix4_gui },
		WhichKeyFloating = { bg = matrix.float },
		WhichKeyFloat = { bg = matrix.float },

		-- LspSaga
		DiagnosticError = { fg = matrix.matrix11_gui },
		DiagnosticWarning = { fg = matrix.matrix15_gui },
		DiagnosticInformation = { fg = matrix.matrix10_gui },
		DiagnosticHint = { fg = matrix.matrix9_gui },
		DiagnosticTruncateLine = { fg = matrix.matrix4_gui },
		LspFloatWinNormal = { bg = matrix.matrix2_gui },
		LspFloatWinBorder = { fg = matrix.matrix9_gui },
		LspSagaBorderTitle = { fg = matrix.matrix8_gui },
		LspSagaHoverBorder = { fg = matrix.matrix10_gui },
		LspSagaRenameBorder = { fg = matrix.matrix14_gui },
		LspSagaDefPreviewBorder = { fg = matrix.matrix14_gui },
		LspSagaCodeActionBorder = { fg = matrix.matrix7_gui },
		LspSagaFinderSelection = { fg = matrix.matrix14_gui },
		LspSagaCodeActionTitle = { fg = matrix.matrix10_gui },
		LspSagaCodeActionContent = { fg = matrix.matrix9_gui },
		LspSagaSignatureHelpBorder = { fg = matrix.matrix13_gui },
		ReferencesCount = { fg = matrix.matrix9_gui },
		DefinitionCount = { fg = matrix.matrix9_gui },
		DefinitionIcon = { fg = matrix.matrix7_gui },
		ReferencesIcon = { fg = matrix.matrix7_gui },
		TargetWord = { fg = matrix.matrix8_gui },

		-- Sneak
		Sneak = { fg = matrix.matrix0_gui, bg = matrix.matrix4_gui },
		SneakScope = { bg = matrix.matrix1_gui },

		-- Cmp
		CmpItemKind = { fg = matrix.matrix15_gui },
		CmpItemAbbrMatch = { fg = matrix.matrix5_gui, style = "bold" },
		CmpItemAbbrMatchFuzzy = { fg = matrix.matrix5_gui, style = "bold" },
		CmpItemAbbr = { fg = matrix.matrix4_gui },
		CmpItemMenu = { fg = matrix.matrix14_gui },

		-- Indent Blankline
		IndentBlanklineChar = { fg = matrix.matrix3_gui },
		IndentBlanklineContextChar = { fg = matrix.matrix10_gui },

		-- Illuminate
		illuminatedWord = { bg = matrix.matrix3_gui },
		illuminatedCurWord = { bg = matrix.matrix3_gui },

		-- nvim-dap
		DapBreakpoint = { fg = matrix.matrix14_gui },
		DapStopped = { fg = matrix.matrix15_gui },

		-- nvim-dap-ui
		DapUIVariable = { fg = matrix.matrix4_gui },
                DapUIScope = { fg = matrix.matrix8_gui },
                DapUIType = { fg = matrix.matrix9_gui },
                DapUIValue = { fg = matrix.matrix4_gui },
                DapUIModifiedValue = { fg = matrix.matrix8_gui },
                DapUIDecoration = { fg = matrix.matrix8_gui },
                DapUIThread = { fg = matrix.matrix8_gui },
                DapUIStoppedThread = { fg = matrix.matrix8_gui },
                DapUIFrameName = { fg = matrix.matrix4_gui },
                DapUISource = { fg = matrix.matrix9_gui },
                DapUILineNumber = { fg = matrix.matrix8_gui },
                DapUIFloatBorder = { fg = matrix.matrix8_gui },
                DapUIWatchesEmpty = { fg = matrix.matrix11_gui },
                DapUIWatchesValue = { fg = matrix.matrix8_gui },
                DapUIWatchesError = { fg = matrix.matrix11_gui },
                DapUIBreakpointsPath = { fg = matrix.matrix8_gui },
                DapUIBreakpointsInfo = { fg = matrix.matrix8_gui },
                DapUIBreakpointsCurrentLine = { fg = matrix.matrix8_gui },
                DapUIBreakpointsLine = { fg = matrix.matrix8_gui },

		-- Hop
		HopNextKey = { fg = matrix.matrix4_gui, style = "bold" },
		HopNextKey1 = { fg = matrix.matrix8_gui, style = "bold" },
		HopNextKey2 = { fg = matrix.matrix4_gui },
		HopUnmatched = { fg = matrix.matrix3_gui },

		-- Fern
		FernBranchText = { fg = matrix.matrix3_gui_bright },

		-- nvim-ts-rainbow
		rainbowcol1 = { fg = matrix.matrix15_gui },
		rainbowcol2 = { fg = matrix.matrix13_gui },
		rainbowcol3 = { fg = matrix.matrix11_gui },
		rainbowcol4 = { fg = matrix.matrix7_gui },
		rainbowcol5 = { fg = matrix.matrix8_gui },
		rainbowcol6 = { fg = matrix.matrix15_gui },
		rainbowcol7 = { fg = matrix.matrix13_gui },

		-- lightspeed
		LightspeedLabel = { fg = matrix.matrix8_gui, style = "bold" },
		LightspeedLabelOverlapped = { fg = matrix.matrix8_gui, style = "bold,underline" },
		LightspeedLabelDistant = { fg = matrix.matrix15_gui, style = "bold" },
		LightspeedLabelDistantOverlapped = { fg = matrix.matrix15_gui, style = "bold,underline" },
		LightspeedShortcut = { fg = matrix.matrix10_gui, style = "bold" },
		LightspeedShortcutOverlapped = { fg = matrix.matrix10_gui, style = "bold,underline" },
		LightspeedMaskedChar = { fg = matrix.matrix4_gui, bg = matrix.matrix2_gui, style = "bold" },
		LightspeedGreyWash = { fg = matrix.matrix3_gui_bright },
		LightspeedUnlabeledMatch = { fg = matrix.matrix4_gui, bg = matrix.matrix1_gui },
		LightspeedOneCharMatch = { fg = matrix.matrix8_gui, style = "bold,reverse" },
		LightspeedUniqueChar = { style = "bold,underline" },

		-- copilot
		CopilotLabel = { fg = matrix.matrix3_gui, bg = matrix.none },

		-- Statusline
		StatusLineDull = { fg = matrix.matrix3_gui, bg = matrix.matrix1_gui },
		StatusLineAccent = { fg = matrix.matrix0_gui, bg = matrix.matrix13_gui },
	}
	-- Options:

	-- Disable nvim-tree background
	if vim.g.matrix_disable_background then
		plugins.NvimTreeNormal = { fg = matrix.matrix4_gui, bg = matrix.none }
	else
		plugins.NvimTreeNormal = { fg = matrix.matrix4_gui, bg = matrix.sidebar }
	end

	if vim.g.matrix_enable_sidebar_background then
		plugins.NvimTreeNormal = { fg = matrix.matrix4_gui, bg = matrix.sidebar }
	else
		plugins.NvimTreeNormal = { fg = matrix.matrix4_gui, bg = matrix.none }
	end

	return plugins
end

return theme
