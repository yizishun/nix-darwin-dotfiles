{...}: {
  services.skhd = {
    enable = true;
    skhdConfig = ''
      shift + cmd - h : yabai -m window --focus west
      shift + cmd - j : yabai -m window --focus south
      shift + cmd - k : yabai -m window --focus north
      shift + cmd - l : yabai -m window --focus east

      cmd - h : yabai -m window --swap west
      cmd - j : yabai -m window --swap south
      cmd - k : yabai -m window --swap north
      cmd - l : yabai -m window --swap east
      shift + cmd - space : yabai -m window --toggle zoom-fullscreen

      cmd - return : yabai -m window --toggle float

      shift + cmd - w : yabai -m window --focus $(yabai -m query --windows --window) && yabai -m window --resize top:0:20
      shift + cmd - a : yabai -m window --resize left:20:0
      shift + cmd - r : yabai -m window --resize bottom:0:20
      shift + cmd - d : yabai -m window --resize right:20:0
    '';
  };
}
