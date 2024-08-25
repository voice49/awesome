--[[

     Powerarrow Awesome WM theme
     github.com/lcpz

--]]

local gears = require("gears")
local lain  = require("lain")
local awful = require("awful")
local wibox = require("wibox")
local dpi   = require("beautiful.xresources").apply_dpi
local watch = require("awful.widget.watch")
local math, string, os = math, string, os
local naughty = require("naughty")

local my_table = awful.util.table or gears.table -- 4.{0,1} compatibility
local theme                                     = {}
theme.dir                                       = os.getenv("HOME") .. "/.config/awesome/themes/powerarrow"
--theme.wallpaper                                 = theme.dir .. "/wallpaper.jpg"
theme.icon_theme                                = "Yaru"
theme.icon_size                                 = dpi(1)
theme.font                                      = "Noto Sans Regular 10"
theme.font                                      = "Noto Sans Regular 10"
theme.taglist_font                              = "Noto Sans Regular 10"
theme.hotkeys_font                              = "Noto Sans Regular 10"
theme.hotkeys_description_font                  = "Noto Sans Regular 10"
theme.hotkeys_border_width                      = dpi(2)
theme.hotkeys_border_height                     = dpi(2)
theme.hotkeys_border_color                      = "#BD93F9"
theme.hotkeys_bg                                = "#44475a"
theme.hotkeys_fg                                = "#FEFEFE" 
theme.hotkeys_modifiers_fg                      = "#BD93F9"
theme.fg_normal                                 = "#F8F8F2"  -- Updated foreground color
theme.fg_focus                                  = "#BD93F9"
theme.notification_fg                           = "#F8F8F2"  -- Updated notification foreground
theme.notificasion_bg                           = "#282A36"  -- Updated notification background
theme.notification_opacity                      = 0.9
theme.fg_urgent                                 = "#FF5555"  -- Updated urgent color
theme.bg_normal                                 = "#282A36"  -- Updated background color
theme.bg_focus                                  = "#282A36"
theme.bg_urgent                                 = "#FF6E67"  -- Updated urgent background color
theme.taglist_fg_focus                          = "#BD93F9"  -- Updated taglist focus color
theme.tasklist_bg_focus                         = "#282A36"  -- Updated tasklist background focus color
theme.tasklist_fg_focus                         = "#FF79C6"  -- Updated tasklist focus color
theme.border_width                              = dpi(2)
theme.border_normal                             = "#000000"  -- Updated border normal color
theme.border_focus                              = "#BD93F9"  -- Updated border focus color
theme.border_marked                             = "#FF5555"  -- Updated marked border color
theme.titlebar_bg_focus                         = "#282A36"
theme.titlebar_bg_normal                        = "#44475a"
theme.titlebar_bg_focus                         = theme.bg_focus
theme.titlebar_bg_normal                        = theme.bg_normal
theme.titlebar_fg_focus                         = theme.fg_focus
theme.menubar_fg_normal                         = "#FEFEFE"
theme.menubar_bg_normal                         = "#44475a"
theme.menu_font                                 = "Noto Sans Regular 10"
theme.menu_fg_focus                             = "#FEFEFE"
theme.menu_height                               = dpi(24)
theme.menu_width                                = dpi(140)
theme.menu_submenu_icon                         = theme.dir .. "/icons/submenu.png"
theme.awesome_icon                              = theme.dir .. "/icons/awesome.png"
theme.taglist_squares_sel                       = theme.dir .. "/icons/square_sel.png"
theme.taglist_squares_unsel                     = theme.dir .. "/icons/square_unsel.png"
theme.layout_tile                               = theme.dir .. "/icons/tile.png"
theme.layout_tileleft                           = theme.dir .. "/icons/tileleft.png"
theme.layout_tilebottom                         = theme.dir .. "/icons/tilebottom.png"
theme.layout_tiletop                            = theme.dir .. "/icons/tiletop.png"
theme.layout_fairv                              = theme.dir .. "/icons/fairv.png"
theme.layout_fairh                              = theme.dir .. "/icons/fairh.png"
theme.layout_spiral                             = theme.dir .. "/icons/spiral.png"
theme.layout_dwindle                            = theme.dir .. "/icons/dwindle.png"
theme.layout_max                                = theme.dir .. "/icons/max.png"
theme.layout_fullscreen                         = theme.dir .. "/icons/fullscreen.png"
theme.layout_magnifier                          = theme.dir .. "/icons/magnifierw.png"
theme.layout_floating                           = theme.dir .. "/icons/floating.png"
theme.widget_ac                                 = theme.dir .. "/icons/ac.png"
theme.widget_battery                            = theme.dir .. "/icons/battery.png"
theme.widget_battery_low                        = theme.dir .. "/icons/battery_low.png"
theme.widget_battery_empty                      = theme.dir .. "/icons/battery_empty.png"
theme.widget_brightness                         = theme.dir .. "/icons/brightness.png"
theme.widget_mem                                = theme.dir .. "/icons/mem.png"
theme.widget_cpu                                = theme.dir .. "/icons/cpu.png"
theme.widget_temp                               = theme.dir .. "/icons/temp.png"
theme.widget_net                                = theme.dir .. "/icons/net.png"
theme.widget_hdd                                = theme.dir .. "/icons/hdd.png"
theme.widget_music                              = theme.dir .. "/icons/note.png"
theme.widget_music_on                           = theme.dir .. "/icons/note_on.png"
theme.widget_music_pause                        = theme.dir .. "/icons/pause.png"
theme.widget_music_stop                         = theme.dir .. "/icons/stop.png"
theme.widget_vol                                = theme.dir .. "/icons/vol.png"
theme.widget_vol_low                            = theme.dir .. "/icons/vol_low.png"
theme.widget_vol_no                             = theme.dir .. "/icons/vol_no.png"
theme.widget_vol_mute                           = theme.dir .. "/icons/vol_mute.png"
theme.widget_mail                               = theme.dir .. "/icons/mail.png"
theme.widget_mail_on                            = theme.dir .. "/icons/mail_on.png"
theme.widget_task                               = theme.dir .. "/icons/task.png"
theme.widget_scissors                           = theme.dir .. "/icons/scissors.png"
theme.widget_weather                            = theme.dir .. "/icons/dish.png"
theme.tasklist_plain_task_name                  = true
theme.tasklist_disable_icon                     = true
theme.useless_gap                               = 10
theme.titlebar_close_button_focus               = theme.dir .. "/icons/titlebar/close_focus.png"
theme.titlebar_close_button_normal              = theme.dir .. "/icons/titlebar/close_normal.png"
theme.titlebar_ontop_button_focus_active        = theme.dir .. "/icons/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active       = theme.dir .. "/icons/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive      = theme.dir .. "/icons/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive     = theme.dir .. "/icons/titlebar/ontop_normal_inactive.png"
theme.titlebar_sticky_button_focus_active       = theme.dir .. "/icons/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active      = theme.dir .. "/icons/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive     = theme.dir .. "/icons/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive    = theme.dir .. "/icons/titlebar/sticky_normal_inactive.png"
theme.titlebar_floating_button_focus_active     = theme.dir .. "/icons/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active    = theme.dir .. "/icons/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive   = theme.dir .. "/icons/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive  = theme.dir .. "/icons/titlebar/floating_normal_inactive.png"
theme.titlebar_maximized_button_focus_active    = theme.dir .. "/icons/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active   = theme.dir .. "/icons/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = theme.dir .. "/icons/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = theme.dir .. "/icons/titlebar/maximized_normal_inactive.png"
theme.menubar_font = "Noto Sans Regular 10"

local markup = lain.util.markup
local separators = lain.util.separators


-- Textclock
local clockicon = wibox.widget.imagebox(theme.widget_clock)
local clock = awful.widget.watch(
    "date +'%a %d %b %R'", 60,
    function(widget, stdout)
        widget:set_markup(markup.fontfg(theme.font,"#8BE9FD" ,stdout))  
    end
)

-- Calendar
theme.cal = lain.widget.cal({
    attach_to = { clock },
    notification_preset = {
        font = "Noto Sans Mono Medium 10",
        fg   = "#8BE9FD" ,
        bg   = theme.bg_normal
    }
})




local my_imagebox = wibox.widget {
    image  = "/home/voice49/.config/awesome/themes/powerarrow/whiskermenu-manjaropurpple.png",  -- {{ edit_1 }} Specify your image path
    resize = true,
    widget = wibox.widget.imagebox,
    buttons = awful.util.table.join(  -- {{ edit_2 }} Add button functionality
    awful.button({}, 1, function() 
        awful.util.mymainmenu:show()  -- Show the Awesome WM menu
    end)
)
}

--Keyboard layouts

local kb = awful.widget.keyboardlayout:new ()






local red    = "#EB8F8F"

-- ALSA volume bar
local volicon = wibox.widget.imagebox(theme.widget_vol)
theme.volume = lain.widget.alsabar {
    width = dpi(80), border_width = 0, ticks = true, ticks_size = dpi(4),
    notification_preset = { font = theme.font },
    --togglechannel = "IEC958,3",
    settings = function()
        if volume_now.status == "off" then
            volicon:set_image(theme.vol_mute)
        elseif volume_now.level == 0 then
            volicon:set_image(theme.vol_no)
        elseif volume_now.level <= 50 then
            volicon:set_image(theme.vol_low)
        else
            volicon:set_image(theme.vol)
        end
    end,
    colors = {
        background   = theme.bg_normal,
        mute         = "#FF5555",
        unmute       = "#5AF78E"    
    }
}
theme.volume.tooltip.wibox.fg ="#5AF78E",
theme.volume.bar:buttons(my_table.join (
          awful.button({}, 1, function()
            awful.spawn(string.format("pavucontrol"))
          end),
          awful.button({}, 2, function()
            os.execute(string.format("%s set %s 100%%", theme.volume.cmd, theme.volume.channel))
            theme.volume.update()
          end),
          awful.button({}, 3, function()
            os.execute(string.format("%s set %s toggle", theme.volume.cmd, theme.volume.togglechannel or theme.volume.channel))
            theme.volume.update()
          end),
          awful.button({}, 4, function()
            os.execute(string.format("%s set %s 1%%+", theme.volume.cmd, theme.volume.channel))
            theme.volume.update()
          end),
          awful.button({}, 5, function()
            os.execute(string.format("%s set %s 1%%-", theme.volume.cmd, theme.volume.channel))
            theme.volume.update()
          end)
))
local volumebg = wibox.container.background(theme.volume.bar, "#5AF78E", gears.shape.rectangle)
local volumewidget = wibox.container.margin(volumebg, dpi(1), dpi(3), dpi(2), dpi(2))


local weathericon = wibox.widget.imagebox(theme.widget_weather)
theme.weather = lain.widget.weather({
    city_id = 264371, 
    notification_preset = { font = "Noto Sans Regular 10", fg = "#F4F99D"  },
    weather_na_markup = markup.fontfg(theme.font, "#F4F99D", "N/A "),
    settings = function()
        descr = weather_now["weather"][1]["description"]:lower()
        units = math.floor(weather_now["main"]["temp"])
        widget:set_markup(markup.fontfg(theme.font, "#F4F99D", descr .. "  " .. units .. "°C "))
    end
})



local systray = wibox.widget.systray()
systray:set_base_size(20)

-- ALSA volume
local volicon = wibox.widget.imagebox("")
theme.volume = lain.widget.alsa({
    settings = function()
        if volume_now.status == "off" then
            volicon:set_image("")
        elseif tonumber(volume_now.level) == 0 then
            volicon:set_image("")
        elseif tonumber(volume_now.level) <= 50 then
            volicon:set_image("")
        else
            volicon:set_image("")
        end

        widget:set_markup(markup.fontfg(theme.font, "#5AF78E", "                " .. volume_now.level .. "% "))
    end
})




function theme.at_screen_connect(s)
    -- Quake application
   -- s.quake = lain.util.quake({ app = awful.util.terminal })
   s.quake = lain.util.quake({ app = "xfce4-terminal --drop-down", height = 0.9, argname = "--name %s", visible = true })



    -- If wallpaper is a function, call it with the screen
    local wallpaper = theme.wallpaper
    if type(wallpaper) == "function" then
        wallpaper = wallpaper(s)
    end
    gears.wallpaper.maximized(wallpaper, s, true)


    -- Taglist label functions
      awful.widget.taglist.filter.all = function (t, args)
       if t.selected or #t:clients() > 0 then
         return orig_filter(t, args)
      end
    end
    -- Tags
    awful.tag(awful.util.tagnames, s, awful.layout.layouts[1])

    -- Create a promptbox for each screen
    s.mypromptbox = awful.widget.prompt()
    -- Create an imagebox widget which will contains an icon indicating which layout we're using.
    -- We need one layoutbox per screen.
    s.mylayoutbox = awful.widget.layoutbox(s)
    s.mylayoutbox:buttons(my_table.join(
                           awful.button({}, 1, function () awful.layout.inc( 1) end),
                           awful.button({}, 2, function () awful.layout.set( awful.layout.layouts[1] ) end),
                           awful.button({}, 3, function () awful.layout.inc(-1) end),
                           awful.button({}, 4, function () awful.layout.inc( 1) end),
                           awful.button({}, 5, function () awful.layout.inc(-1) end)))
    -- Create a taglist widget
    --s.mytaglist = awful.widget.taglist(s, awful.widget.taglist.filter.all, awful.util.taglist_buttons)
    --s.mytaglist = awful.widget.taglist(s, awful.widget.taglist.filter.selected, awful.util.taglist_buttons)
    s.mytaglist = awful.widget.taglist(s, awful.widget.taglist.filter.noempty, awful.util.taglist_buttons)

    -- Create a tasklist widget
    s.mytasklist = awful.widget.tasklist(s, awful.widget.tasklist.filter.currenttags, awful.util.tasklist_buttons)

    -- Create the wibox
    s.mywibox = awful.wibar({ position = "top", screen = s, height = dpi(20), bg = theme.bg_normal, fg = theme.fg_normal })

    -- Add widgets to the wibox
    s.mywibox:setup {
        layout = wibox.layout.align.horizontal,
        { -- Left widgets
            layout = wibox.layout.fixed.horizontal,
            my_imagebox,-- Add the launcher here
            s.mytaglist,
            s.mypromptbox,
            kb,
            spr,
        
        },
        s.mytasklist, -- Middle widget
        { -- Right widgets
            layout = wibox.layout.fixed.horizontal,
            wibox.widget.systray(),
           wibox.container.background(wibox.container.margin(wibox.widget { volicon, theme.volume.widget, layout = wibox.layout.align.horizontal }, dpi(2), dpi(3)), ""),
           volumewidget,
            wibox.container.background(wibox.container.margin(wibox.widget { weathericon, theme.weather.widget, layout = wibox.layout.align.horizontal }, dpi(3), dpi(3)), ""),       
            wibox.container.background(wibox.container.margin(clock, dpi(4), dpi(8)), ""),
            --]]
            s.mylayoutbox,
        },
    }
end

-- Function to show a themed notification
function show_themed_notification(title, message)
    naughty.notify({
        title = title,
        text = message,
        font = "Noto Sans Mono Medium 10",
        fg = theme.fg_normal,  -- Use your theme's foreground color
        bg = theme.bg_normal,  -- Use your theme's background color
        timeout = 5,           -- Duration in seconds
        position = "top_right" -- Position of the notification
    })
end



return theme
