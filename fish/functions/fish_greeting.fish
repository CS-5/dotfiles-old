function fish_greeting
  set_color $fish_color_autosuggestion
  uname -nmsr

  command -q -s uptime >/dev/null
  and command uptime

  set_color normal
end
