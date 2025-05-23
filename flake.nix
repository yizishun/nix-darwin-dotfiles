{
  description = "Nix for macOS configuration";

  nixConfig = {
    substituters = [
      # Query the mirror of USTC first, and then the official cache.
      "https://mirrors.ustc.edu.cn/nix-channels/store"
      "https://cache.nixos.org"
    ];
  };

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
    nix-darwin = {
      url = "github:LnL7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs @ {
    self,
    nix-darwin,
    nixpkgs,
    home-manager,
  }: let
    username = "yizishun";
    useremail = "320016@qq.com";
    system = "aarch64-darwin";
    hostname = "MacBook-Air-7";
    specialArgs =
      inputs
      // {
        inherit username useremail hostname system;
      };
  in {
    # Build darwin flake using:
    # $ darwin-rebuild build --flake .#simple
    darwinConfigurations."${hostname}" = nix-darwin.lib.darwinSystem {
      inherit system specialArgs;
      modules = [
        ./module/app.nix
        ./module/host-users.nix
        ./module/nix-core.nix
        ./module/system.nix
        ./module/config/yabai.nix
        ./module/config/skhd.nix
        ./module/config/sketchybar/sketchybar.nix
        home-manager.darwinModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.verbose = true;
          home-manager.extraSpecialArgs = specialArgs;
          home-manager.users.${username} = import ./home;
        }
      ];
    };

    # Expose the package set, including overlays, for convenience.
    darwinPackages = self.darwinConfigurations."${hostname}".pkgs;

    # nix code formatter
    formatter.${system} = nixpkgs.legacyPackages.${system}.alejandra;
  };
}
