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
    #PATH = "/Users/yizishun/.local/bin:/usr/bin:/opt/homebrew/opt/gnu-sed/libexec/gnubin:/opt/homebrew/opt/binutils/bin:/Users/yizishun/x86_64-unknown-linux-gnu/bin:/Users/yizishun/aarch64-unknown-linux-gnu/bin:/opt/homebrew/Cellar/openvpn/2.6.12/sbin:/opt/homebrew/opt/llvm/bin:/opt/homebrew/opt/findutils/libexec/gnubin:/Users/yizishun/miniforge3/bin:/opt/homebrew/bin:/opt/homebrew/opt/coreutils/libexec/gnubin:/Users/yizishun/.nix-profile/bin:/etc/profiles/per-user/yizishun/bin:/run/current-system/sw/bin:/nix/var/nix/profiles/default/bin:/usr/local/bin:/usr/bin:/usr/sbin:/bin:/sbin:/Users/yizishun/.orbstack/bin:/Users/yizishun/Library/Application Support/Coursier/bin:/Users/yizishun/.local/bin";
    #PATH = "/run/current-system/sw/bin";
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
    CHIPLAB_HOME = "/Users/yizishun/untitl3d/untitl3d";
    CLICOLOR = "1";
    NIXPKGS_ALLOW_INSECURE=1;
  };
  home.sessionPath = [
    "/opt/homebrew/opt/coreutils/libexec/gnubin"
    "/opt/homebrew/bin"
    "/Users/yizishun/miniforge3/bin"
    "/Users/yizishun/.local/bin"
    "/opt/homebrew/opt/findutils/libexec/gnubin"
    "/opt/homebrew/opt/llvm/bin"
    "/opt/homebrew/Cellar/openvpn/2.6.12/sbin"
    "/Users/yizishun/aarch64-unknown-linux-gnu/bin"
    "/Users/yizishun/x86_64-unknown-linux-gnu/bin"
    "/opt/homebrew/opt/binutils/bin"
    "/opt/homebrew/opt/gnu-sed/libexec/gnubin"
    "/usr/bin"
    "$HOME/.local/bin"
    "/Users/yizishun/oss-cad-suite/bin"
    "/Users/yizishun/Library/Python/3.9/bin"
    "/Users/yizishun/untitl3d/untitl3d/toolchains/loongson-gnu-toolchain-8.3-x86_64-loongarch32r-linux-gnusf-v2.0/bin"
    "/opt/homebrew/opt/ncurses/bin"
    "/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/"
];

  home.shellAliases = {
    ssh121 = "ssh awaken@121.41.164.19";
    key = "cat ~/k";
    #gcc = "gcc-14";
    todo = "cursor ~/todo/TODO.md";
    vcs = "docker run -it -p 5902:5902 -p 1234:22 --hostname lizhen --mac-address 02:42:ac:11:00:02 -e VERDI_HOME=/usr/synopsys/verdi-L-2016.06-1 -v /Users/yizishun/zen-core:/mnt/zen-core phyzli/ubuntu18.04_xfce4_vnc4server_synopsys2016";
    qemu-ubuntu = "qemu-system-x86_64 -cpu Skylake-Client,+avx,+avx2 -m 4G -hda /Users/yizishun/qemu-ubuntu22.04/ubuntu-disk.qcow2 -virtfs local,path=/Users/yizishun/zen-core,mount_tag=shared-folder,security_model=none,id=shared -net nic -net user,hostfwd=tcp::2222-:22 &";
    sshqemu = "ssh -p 2222 yizishun@localhost";
  };
}
