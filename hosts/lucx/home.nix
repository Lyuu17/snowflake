# This is your home-manager configuration file
# Use this to configure your home environment (it replaces ~/.config/nixpkgs/home.nix)

{ inputs, lib, config, pkgs, ... }: {
  # You can import other home-manager modules here
  imports = [
    # If you want to use home-manager modules from other flakes (such as nix-colors):
    # inputs.nix-colors.homeManagerModule

    # You can also split up your configuration and import pieces of it here:
    # ./nvim.nix

    ../../pkgs/hyprland/home.nix
    ../../pkgs/eww/home.nix
  ];

  home = {
    username = "lucx";
    homeDirectory = "/home/lucx";
  };

  # Add stuff for your user as you see fit:
  # home.packages = with pkgs; [ steam ];

  programs = {
    home-manager.enable = true;
    git.enable = true;
    wezterm.enable = true;

    eww-hyprland = {
      enable = true;
      package = pkgs.eww-wayland;
      autoReload = false;
    };
  };

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "23.05";
}
