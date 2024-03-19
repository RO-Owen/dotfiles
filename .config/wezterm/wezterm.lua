local wezterm = require("wezterm")
local config = {}
if wezterm.config_builder then
	config = wezterm.config_builder()
end
config.color_scheme_dirs = { "~/.config/wezterm/colors" }
config.color_scheme = "Github_Dark_Default"

config.font = wezterm.font({
	family = "MonaspiceAr NFP",
	harfbuzz_features = { "ss01", "ss02", "ss03", "ss04", "ss05", "ss06", "ss07", "ss08", "calt", "dlig" },
})
config.font_size = 10
return config
