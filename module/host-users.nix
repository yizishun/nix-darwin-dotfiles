{
  username,
  hostname,
  ...
} @ args: {
  networking.hostName = hostname;
  networking.computerName = hostname;
  system.defaults.smb.NetBIOSName = hostname;
  users.users.${username} = {
    name = username;
    home = "/Users/${username}";
  };
  nix.settings.trusted-users = [username "root"];
}
