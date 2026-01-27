{ pkgs, ... }:

{
  #make neovim the default editor
  programs.neovim.enable = true;
  programs.neovim.defaultEditor = true;
}
