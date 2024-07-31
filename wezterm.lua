local wezterm = require 'wezterm'

local home_path = os.getenv('HOME') 

local config = {
    
    --[[ 
       功能 
    --]]
    automatically_reload_config = true, 
    window_close_confirmation = 'NeverPrompt',
    window_decorations = "RESIZE",
    hide_tab_bar_if_only_one_tab = true,
    
    --[[
    外观
    --]]
    default_cursor_style = "BlinkingBar",
    color_scheme = 'Sequoia Monochrome',
    font = wezterm.font("JetBrains Mono", { weight = "Bold" }),
    font_size = 12.5,
    background = {
        {
            source = {
                File = {
                    path = home_path .. "/.config/wezterm/resource/term_bg_3.gif",
                    speed = 0.3,
                },
            },
            hsb = {
                hue = 1.0,
                saturation = 1.5,
                brightness = 1.0,
            },
            width = "100%",
            height = "100%",

            opacity = 0.85,
        },
        {
            source = {
                Color = "#282c35",
            },
            width = "100%",
            height = "100%",
            opacity = 0.55,
        }
    },
    window_background_opacity = 0.85,
    text_background_opacity = 0.3,
}

return config

