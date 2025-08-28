{pkgs, ...}: {
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
    vim
    neofetch
    just
    yabai
    skhd
    sketchybar
    verilator
  ];
#  homebrew = {
#    enable = true;
#    onActivation = {
#      autoUpdate = false; # Fetch the newest stable branch of Homebrew's git repo
#      upgrade = false; # Upgrade outdated casks, formulae, and App Store apps
#      # 'zap': uninstalls all formulae(and related files) not listed in the generated Brewfile
#      cleanup = "none";
#    };
#    # onActivation.cleanup = "uninstall";
#    taps = [];
#    brews = [
#      "cowsay"
#      "mas"
#      "jq"
#      "switchaudio-osx"
#      #"mysql"
#      "qt@6"
#    ];
#    casks = [
#      "sf-symbols"
#    ];
#  };
}
