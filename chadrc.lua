---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "onedark",
  hl_override = {
    DiffAdd = { bg = "#222a1e", fg = "NONE" },
    DiffChange = { bg = "#262b35", fg = "NONE"},
    DiffText = { bg = "#3f4757", fg = "NONE"},
    DiffDelete = { bg = "#35262b", fg = "NONE"},
    Label = { fg = "red" },
    ["@symbol"] = { fg = "#56b6c2"}
  },
  hl_add = {
    DiagnosticInfo = { fg = "#5e6a84"}
  },
  statusline = {
    theme = "vscode_colored", -- default/vscode/vscode_colored/minimal
  },
  nvdash = {
    load_on_startup = true
  }
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M

--M.base_16 = {
  --base00 = "#1e222a",
  --base01 = "#353b45",
  --base02 = "#3e4451",
  --base03 = "#545862",
  --base04 = "#565c64",
  --base05 = "#abb2bf",
  --base06 = "#b6bdca",
  --base07 = "#c8ccd4",
  --base08 = "#e06c75",
  --base09 = "#d19a66",
  --base0A = "#e5c07b",
  --base0B = "#98c379",
  --base0C = "#56b6c2",
  --base0D = "#61afef",
  --base0E = "#c678dd",
  --base0F = "#be5046",
--}
--
--M.base_30 = {
  --white = "#abb2bf",
  --darker_black = "#1b1f27",
  --black = "#1e222a", --  nvim bg
  --black2 = "#252931",
  --one_bg = "#282c34", -- real bg of onedark
  --one_bg2 = "#353b45",
  --one_bg3 = "#373b43",
  --grey = "#42464e",
  --grey_fg = "#565c64",
  --grey_fg2 = "#6f737b",
  --light_grey = "#6f737b",
  --red = "#e06c75",
  --baby_pink = "#DE8C92",
  --pink = "#ff75a0",
  --line = "#31353d", -- for lines like vertsplit
  --green = "#98c379",
  --vibrant_green = "#7eca9c",
  --nord_blue = "#81A1C1",
  --blue = "#61afef",
  --yellow = "#e7c787",
  --sun = "#EBCB8B",
  --purple = "#de98fd",
  --dark_purple = "#c882e7",
  --teal = "#519ABA",
  --orange = "#fca2aa",
  --cyan = "#a3b8ef",
  --statusline_bg = "#22262e",
  --lightbg = "#2d3139",
  --pmenu_bg = "#61afef",
  --folder_bg = "#61afef",
--}
--
		--black = "#0e1013",
		--bg0 = "#1f2329",
		--bg1 = "#282c34",
		--bg2 = "#30363f",
		--bg3 = "#323641",
		--bg_d = "#181b20",
		--bg_blue = "#61afef",
		--bg_yellow = "#e8c88c",
		--fg = "#a0a8b7",
		--purple = "#bf68d9",
		--green = "#8ebd6b",
		--orange = "#cc9057",
		--blue = "#4fa6ed",
		--yellow = "#e2b86b",
		--cyan = "#48b0bd",
		--red = "#e55561",
		--grey = "#535965",
		--light_grey = "#7a818e",
		--dark_cyan = "#266269",
		--dark_red = "#8b3434",
		--dark_yellow = "#835d1a",
		--dark_purple = "#7e3992",
		--diff_add = "#272e23",
		--diff_delete = "#2d2223",
		--diff_change = "#172a3a",
		--diff_text = "#274964",
