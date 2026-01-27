{ pkgs, ... }:

{
  #Make fish the default shell
  programs.fish.enable = true;
  users.defaultUserShell = pkgs.fish;
}
