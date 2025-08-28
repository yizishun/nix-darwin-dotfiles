{
  pkgs,
  config,
  ...
}: {
  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = with pkgs; [
    # # Adds the 'hello' command to your environment. It prints a friendly
    # # "Hello, world!" when run.
    hello

    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    (writeShellScriptBin "my-hello" ''
      echo "Hello, ${config.home.username}!"
    '')
    #language
    poetry
    python311
    rustup
    nodejs_24
    nodemon
    pnpm
    yarn

    texliveTeTeX
    #build tools
    # 定制化的 mill
#    (let
#      jre = pkgs.jdk21; # 使用 Java 21
#    in (pkgs.mill.override { inherit jre; }).overrideAttrs (old: {
#      passthru = {
#        inherit jre;
#      };
#    }))
    #gnumake
    cmake
    #compiler
    verilog
    surfer
    jq
    espresso
    # open-verify
    swig
    openvpn
    wireguard-tools
    pandoc
    libsForQt5.qt5.qtbase
    circt
    minicom
    typst
    # network
    nmap
    mitmproxy
    aircrack-ng
    automake
    autoconf
    libtool
    gnum4
    pkg-config
  ];
}
