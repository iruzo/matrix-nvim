-- Colorscheme name:    matrix
-- Description:         matrix theme
-- Author:              https://gitlab.com/iruzo

local util = require("matrix.util")

-- Load the theme
local set = function()
	util.load()
end

return { set = set }
