{ pkg, ... }:

{
  programs.nh.enable = true;
  programs.nh.clean = {
    enable = true;
    dates = "weekly";
    extraOptions = "--keep 2 --keep-since 3d";
  };
}
