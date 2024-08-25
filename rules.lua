 
 -- rules.lua
local awful = require("awful")
local beautiful = require("beautiful")
awful.rules.rules = {
 { rule = { },
      properties = { border_width = beautiful.border_width,
                     border_color = beautiful.border_normal,
                     focus = awful.client.focus.filter,
                     raise = true,
                     keys = clientkeys,
                     buttons = clientbuttons,
                     screen = awful.screen.preferred,
                     placement = awful.placement.no_overlap+awful.placement.no_offscreen,
                     size_hints_honor = false
     }
    },
    {
      rule = { name = "dropdown" },
      properties = {
          floating = true,
          width = 800,
          height = 600,
          placement = awful.placement.top,
          titlebars_enabled = false,
      }
  },
    -- Titlebars
    { rule_any = { type = { "dialog", "normal" } },
      properties = { titlebars_enabled = false } },
          -- Set applications to always map on the tag 2 on screen 1.
    --{ rule = { class = "Subl" },
        --properties = { screen = 1, tag = awful.util.tagnames[2], switchtotag = true  } },


    -- Set applications to always map on the tag 1 on screen 1.
    -- find class or role via xprop command
    { rule = { class = "Brave-browser" },
      properties = { screen = 1, tag = awful.util.tagnames[1], switchtotag = true  } },

    { rule = { class = "Firefox" },
      properties = { screen = 1, tag = awful.util.tagnames[1], switchtotag = true  } },

    { rule = { class = "cursor" },
      properties = { screen = 1, tag = awful.util.tagnames[2], switchtotag = true } },

    { rule = { class = "VSCodium" },
      properties = { screen = 1, tag = awful.util.tagnames[2], switchtotag = true  } },

    { rule = { class = "Mozilla Thunderbird" },
      properties = { screen = 1, tag = awful.util.tagnames[3],switchtotag = true  } },

    -- Set applications to always map on the tag 2 on screen 1.
    --{ rule = { class = "" },
        --properties = { screen = 1, tag = awful.util.tagnames[2],switchtotag = true  } },

    { rule = { class =  "Thunar" },
      properties = { screen = 2, tag = awful.util.tagnames[1], switchtotag = true  } },

    --{ rule = { class = "Brackets" },
        --properties = { screen = 1, tag = awful.util.tagnames[2], switchtotag = true  } },

    { rule = { class =  "Rhythmbox" },
      properties = { screen = 2, tag = awful.util.tagnames[2], switchtotag = true  } },

    { rule = { class =  "Spotify" },
      properties = { screen = 2, tag = awful.util.tagnames[2], switchtotag = true  } },

    { rule = { class =  "discord" },
      properties = { screen = 2, tag = awful.util.tagnames[1], switchtotag = true  } },  


    -- Set applications to always map on the tag 3 on screen 1.
    --{ rule = { class = "Inkscape" },
        --properties = { screen = 1, tag = awful.util.tagnames[3], switchtotag = true  } },

    -- Set applications to always map on the tag 4 on screen 1.
    --{ rule = { class = "Gimp" },
        --properties = { screen = 1, tag = awful.util.tagnames[4], switchtotag = true  } },

    -- Set applications to always map on the tag 5 on screen 1.
    --{ rule = { class = "Meld" },
        --properties = { screen = 1, tag = awful.util.tagnames[5] , switchtotag = true  } },


    -- Set applications to be maximized at startup.
    -- find class or role via xprop command
    { rule = { class = "VSCodium" },
          properties = { maximized = false, floating = false } },
    { rule = { class = "cursor" },
          properties = { maximized = false, floating = false } },
       { rule = { class = "Thunar" },
          properties = { maximized = false, floating = true } },
    { rule = { class = "Gimp*", role = "gimp-image-window" },
          properties = { maximized = true } },
    { rule = { class = "Rhythmbox" },
          properties = { maximized = true } },
    { rule = { class = "inkscape" },
          properties = { maximized = true } },
    { rule = { class = "Spotify"},
          properties = { maximized = false } },
    { rule = { class = "Mozilla Thunderbird"},
          properties = { maximized = false } },
    { rule = { class = "Vlc" },
          properties = { maximized = true } },
    { rule = { class = "brave" },
          properties = { maximized = true } },     
    { rule = { class = "Google-chrome" },
          properties = { maximized = true } },
    { rule = { class = "Firefox" },
          properties = { maximized = true } },
    { rule = { class = "Alacritty" },
            properties = { maximized = false, floating = false} },
    { rule = { class = "kitty" },  
            properties = { maximized = false, floating = false} },       
    { rule = { class = "Firefox" },
            properties = { maximized = true } },
    { rule = { class = "Xfce4-settings-manager" },
          properties = { floating = false } },

    -- Floating clients.
    { rule_any = {
        instance = {
          "DTA",  
          "copyq",  
        },
        class = {
          "alacritty",
          "Galculator",
          "Gnome-font-viewer",
          "Gpick",
          "Pavucontrol",
          "Imagewriter",
          "Font-manager",
          "Kruler",
          "MessageWin", 
          "Peek",
          "System-config-printer.py",
          "Sxiv",
          "Unetbootin.elf",
          "Wpa_gui",
          "pinentry",
          "veromix",
          "xtightvncviewer",
          "kitty",
          "Xfce4-terminal"},

        name = {
          "Event Tester",  
        },
        role = {
          "AlarmWindow",  
          "pop-up",       
          "Preferences",
          "setup",
        }
      }, properties = { floating = true }},

    { rule = { instance = "scratch" },
          properties = { floating = true} },

          -- Floating clients but centered in screen
    { rule_any = {
       	class = {
       		"Polkit-gnome-authentication-agent-1",
               "kitty"
				},
				},
      	properties = { floating = true },
	      	callback = function (c)
    		  awful.placement.centered(c,nil)
       		end }
}
return awful.rules.rules