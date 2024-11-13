{
  pkgs,
  config,
  ...
}: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    enableVteIntegration = true;
    autocd = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    oh-my-zsh = {
      enable = true;
      #theme = "powerlevel10k/powerlevel10k";
      theme = "robbyrussell";
      plugins = ["git" "z"];
    };
  };
  home.sessionVariables = {
    #PATH = "/opt/homebrew/opt/coreutils/libexec/gnubin:/opt/homebrew/bin:/Users/yizishun/miniforge3/bin:/Users/yizishun/.local/bin:/opt/homebrew/opt/findutils/libexec/gnubin:/opt/homebrew/opt/llvm/bin:/opt/homebrew/Cellar/openvpn/2.6.12/sbin:/Users/yizishun/aarch64-unknown-linux-gnu/bin:/Users/yizishun/x86_64-unknown-linux-gnu/bin:/opt/homebrew/opt/binutils/bin:/opt/homebrew/opt/gnu-sed/libexec/gnubin:/usr/bin";
    PATH = "/Users/yizishun/.local/bin:/usr/bin:/opt/homebrew/opt/gnu-sed/libexec/gnubin:/opt/homebrew/opt/binutils/bin:/Users/yizishun/x86_64-unknown-linux-gnu/bin:/Users/yizishun/aarch64-unknown-linux-gnu/bin:/opt/homebrew/Cellar/openvpn/2.6.12/sbin:/opt/homebrew/opt/llvm/bin:/opt/homebrew/opt/findutils/libexec/gnubin:/Users/yizishun/miniforge3/bin:/opt/homebrew/bin:/opt/homebrew/opt/coreutils/libexec/gnubin:/Users/yizishun/.nix-profile/bin:/etc/profiles/per-user/yizishun/bin:/run/current-system/sw/bin:/nix/var/nix/profiles/default/bin:/usr/local/bin:/usr/bin:/usr/sbin:/bin:/sbin:/Users/yizishun/.orbstack/bin:/Users/yizishun/Library/Application Support/Coursier/bin:/Users/yizishun/.local/bin";
    C_INCLUDE_PATH = "/usr/local/include";
    NEMU_HOME = "/Users/yizishun/ysyx-workbench/nemu";
    AM_HOME = "/Users/yizishun/ysyx-workbench/abstract-machine";
    AM_KERNEL_HOME = "/Users/yizishun/ysyx-workbench/software/am-kernels";
    NPC_HOME = "/Users/yizishun/ysyx-workbench/npc-chisel";
    NVBOARD_HOME = "/Users/yizishun/ysyx-workbench/nvboard";
    NAVY_HOME = "/Users/yizishun/ysyx-workbench/software/nanos-lite/navy-apps";
    CACHESIM_HOME = "/Users/yizishun/ysyx-workbench/npc-chisel/cacheSim";
    BRANCHSIM_HOME = "/Users/yizishun/ysyx-workbench/npc-chisel/branchSim";
    RISCV = "/opt/homebrew/Cellar/riscv-gnu-toolchain/main";
    CONFIG_DIR = "/Users/yizishun/nix-darwin-config/module/config/sketchybar";
    CLICOLOR = "1";
  };
  home.shellAliases = {
    ssh121 = "ssh awaken@121.41.164.19";
    key = "cat ~/k";
    gcc = "gcc-14";
  };
}
