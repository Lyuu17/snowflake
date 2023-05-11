{...}: {
  services.dunst = {
    enable = true;
    waylandDisplay = "DP-1";
    settings = ./config.nix;
  };
}
