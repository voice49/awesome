-- Function to run a command if it's not already running
function run(command)
    local handle = io.popen("pgrep " .. command)
    local result = handle:read("*a")
    handle:close()
    
    if result == "" then
        os.execute(command .. " &")
    end
end

-- Set keyboard layout
os.execute("setxkbmap -layout 'us,gr' -option 'grp:alt_shift_toggle'")

-- Set cursor
os.execute("xsetroot -cursor_name left_ptr &")

-- Run applications
run("pamac-tray")
os.execute("numlockx on &")
os.execute("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &  ")
os.execute("/usr/lib/kde4/libexec/polkit-kde-authentication-agent-1 &")
os.execute("/usr/lib/xfce4/notifyd/xfce4-notifyd &")