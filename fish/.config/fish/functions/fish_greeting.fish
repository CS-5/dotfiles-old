function fish_greeting
        set_color $fish_color_command
        printf "      _ Welcome to _  UT: %s       \n" (uptime | awk '{print $1}')
        printf "     | | Carson's | |\n"
        echo "   __| | _____   _| |__   _____  __"
        echo "  / _` |/ _ \ \ / / '_ \ / _ \ \/ /"
        echo " | (_| |  __/\ V /| |_) | (_) >  < "
        echo "  \__,_|\___| \_/ |_.__/ \___/_/\_\\"


        set_color $fish_color_normal
end
