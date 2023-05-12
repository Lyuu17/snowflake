{ ... }:

{
  imports = [ ./configuration.nix ];

  programs = {
    hyprland.enable = true;
  };

  services = {
    greetd = {
      enable = true;
      settings = rec {
        initial_session = {
          command = "Hyprland";
          user = "lucx";
        };
        default_session = initial_session;
      };
    };
  };
}
