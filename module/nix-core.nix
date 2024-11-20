{
  pkgs,
  lib,
  system,
  ...
}: {
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
  nixpkgs.hostPlatform = system;
  services.nix-daemon.enable = true;
  nix.package = pkgs.nix;
  # do garbage collection weekly to keep disk usage low
  nix.gc = {
    automatic = lib.mkDefault true;
    options = lib.mkDefault "--delete-older-than 7d";
  };
  nix.extraOptions = ''
    extra-platforms = x86_64-darwin aarch64-darwin
  '';
  nix.linux-builder.enable = true;
  # Disable auto-optimise-store because of this issue:
  #   https://github.com/NixOS/nix/issues/7273
  # "error: cannot link '/nix/store/.tmp-link-xxxxx-xxxxx' to '/nix/store/.links/xxxx': File exists"
  nix.settings = {
    experimental-features = "nix-command flakes";
    auto-optimise-store = false;
    substituters = [ "https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store"
                     "https://mirror.sjtu.edu.cn/nix-channels/store"
                     "https://mirrors.ustc.edu.cn/nix-channels/store"
                     ];
  };
}
