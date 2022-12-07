local colors = require("matrix.colors")

local matrix = {}

matrix.normal = {
	a = { fg = colors.matrix1_gui, bg = colors.matrix9_gui },
	b = { fg = colors.matrix5_gui, bg = colors.matrix2_gui },
	c = { fg = colors.matrix4_gui, bg = colors.matrix1_gui },
}

matrix.insert = {
	a = { fg = colors.matrix1_gui, bg = colors.matrix4_gui },
	b = { fg = colors.matrix6_gui, bg = colors.matrix3_gui_bright },
}

matrix.visual = {
	a = { fg = colors.matrix0_gui, bg = colors.matrix9_gui },
	b = { fg = colors.matrix4_gui, bg = colors.matrix10_gui },
}

matrix.replace = {
	a = { fg = colors.matrix0_gui, bg = colors.matrix11_gui },
	b = { fg = colors.matrix4_gui, bg = colors.matrix10_gui },
}

matrix.command = {
	a = { fg = colors.matrix0_gui, bg = colors.matrix15_gui, gui = "bold" },
	b = { fg = colors.matrix4_gui, bg = colors.matrix10_gui },
}

matrix.inactive = {
	a = { fg = colors.matrix4_gui, bg = colors.matrix0_gui, gui = "bold" },
	b = { fg = colors.matrix4_gui, bg = colors.matrix0_gui },
	c = { fg = colors.matrix4_gui, bg = colors.matrix1_gui },
}

return matrix
