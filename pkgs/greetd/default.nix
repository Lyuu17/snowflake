{ ... }:

{
  services.greetd = {
    enable = true;
    settings = rec {
      initial_session = {
        user = "lucx";
        command = "Hyprland";
      };
      default_session = initial_session;
    };
  };
}