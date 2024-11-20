{...}: {
  services.sketchybar = {
    enable = true;
    config = builtins.readFile ./sketchybarrc;
    #config = builtins.readFile "${builtins.path { path = ./.; }}/sketchybarrc";
  };
}
