{ pkgs, ... }:

{
  programs.firefox.enable = false;

  # Enable running of non-nix apps
  programs.nix-ld.enable = true;

  programs = {
    starship.enable = true;
    zoxide.enable = true;
    yazi.enable = true;
  };

  programs.gpu-screen-recorder.enable = true;
  programs.localsend.enable = true;

  powerManagement.powertop.enable = true;

  environment.systemPackages = with pkgs; [
    wget
    git
    atuin
    lazygit
    eza
    fzf
    bat
    btop
    fastfetch
    gcc

    statix
    nil
    nix-search-tv

    obsidian
    ghostty

    nerd-fonts.fira-code
    nerd-fonts.jetbrains-mono

    gnome-tweaks
    evince # document viewer
    nautilus # gnome default file manager
    file-roller # unzip
    baobab # analyse disk usage in gnome env
    loupe # image viewer

    mpv
    celluloid

    tor-browser
  ];
}
