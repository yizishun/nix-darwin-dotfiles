{...}: {
  services.yabai = {
    enable = true;

    # 配置键值对
    config = {
      mouse_follows_focus = "off";
      focus_follows_mouse = "off";
      window_origin_display = "default";
      window_placement = "second_child";
      window_topmost = "off";
      window_shadow = "float";
      window_opacity = "on";
      window_opacity_duration = "0.15";
      active_window_opacity = "0.95";
      normal_window_opacity = "0.85";
      window_border = "on";
      window_border_width = 5;
      active_window_border_color = "0xffe1e3e4";
      normal_window_border_color = "0xff87ceeb";
      insert_feedback_color = "0xff9dd274";
      split_ratio = "0.50";
      auto_balance = "off";
      mouse_modifier = "alt";
      mouse_action1 = "move";
      mouse_action2 = "resize";
      mouse_drop_action = "swap";
      external_bar = "all:53:0";

      # 空间（space）配置
      layout = "bsp";
      top_padding = 8;
      bottom_padding = 8;
      left_padding = 8;
      right_padding = 8;
      window_gap = 8;
    };

    # 额外的自定义配置
    extraConfig = ''
      # 事件和信号配置
      yabai -m signal --add event=dock_did_restart action="sudo yabai --load-sa"
      sudo yabai --load-sa

      # Sketchybar 事件触发器
      yabai -m signal --add event=window_focused action="sketchybar --trigger window_focus"
      yabai -m signal --add event=window_created action="sketchybar --trigger windows_on_spaces"
      yabai -m signal --add event=window_destroyed action="sketchybar --trigger windows_on_spaces"

      # 应用规则
      yabai -m rule --add app="^iStat*" sticky=on layer=above manage=off border=off
      yabai -m rule --add app="^System Preferences*" manage=off
      yabai -m rule --add app="^QQ音乐$" manage=off
      yabai -m rule --add app="^活动监视器$" manage=off
      yabai -m rule --add app="^系统设置$" manage=off
      yabai -m rule --add app="^gtkwave$" manage=off
      yabai -m rule --add app="^访达$" manage=off
      yabai -m rule --add app="^计算器$" manage=off
      yabai -m rule --add app="^腾讯会议$" manage=off
      yabai -m rule --add app="^pulseview.real$" manage=off

      # 边框配置
      borders active_color=0xffe1e3e4 inactive_color=0xff87ceeb width=5.0 &

      echo "yabai configuration loaded.."
    '';
  };
}
