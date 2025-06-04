{ config, pkgs, ... }:

let
  ivySCI = pkgs.callPackage /home/xwu/.config/home-manager/ivysci.nix {};
in
# {
#   home.packages = [ ivySCI ];  # 添加到用户环境
#
# }

{

 nixpkgs.overlays = [
    (self: super: {
      unstable = import (builtins.fetchTarball "https://github.com/NixOS/nixpkgs/archive/nixos-unstable.tar.gz") {
      };
      nur = import (builtins.fetchTarball "https://github.com/nix-community/NUR/archive/master.tar.gz") {
        pkgs = super;
      };

      # app = import ("/home/xwu/.config/home-manager/ivysci.nix"){};
    })


  ];




  nixpkgs = {
    config = {
# allowUnfreePredicate = (pkg.unstable: true);
# allowUnfree = true;
      # allowUnfreePredicate = (_: true);
      # allowUnfreePredicate = pkg: builtins.elem (pkg.pname) [
      #        "wechat-uos"
      #      ];


permittedInsecurePackages = [
	      "openssl-1.1.1w"
      ];
    };
  };


  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "xwu";
  home.homeDirectory = "/home/xwu";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "24.11"; # Please read the comment before changing.



  # 启用字体配置
  fonts.fontconfig.enable = true;


  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages =  [
    # # Adds the 'hello' command to your environment. It prints a friendly
    # # "Hello, world!" when run.
    # pkgs.hello
    pkgs.nur.repos.xddxdd.dingtalk
    # pkgs.unstable.wechat-uos
    pkgs.unstable.drawio
    pkgs.unstable.obsidian
    pkgs.unstable.pandoc
    pkgs.unstable.haskellPackages.pandoc-crossref
    pkgs.unstable.librsvg
    pkgs.unstable.wpsoffice-cn
    # pkgs.unstable.qq
    pkgs.unstable.tmux
    pkgs.unstable.ripgrep
    pkgs.unstable.fd
    pkgs.unstable.ghostty
    pkgs.unstable.distrobox
    pkgs.unstable.lm_sensors
    pkgs.unstable.hardinfo2
    pkgs.unstable.micromamba
    pkgs.unstable.neovim
    pkgs.unstable.lyx
    pkgs.unstable.telegram-desktop
    pkgs.unstable.htop
    pkgs.unstable.zed-editor
    pkgs.unstable.gnome-tweaks
    pkgs.unstable.devenv
    pkgs.unstable.fish

     pkgs.noto-fonts-emoji
      pkgs.sarasa-gothic
      pkgs.source-han-serif-vf-ttf
      pkgs.source-han-serif-vf-otf
      pkgs.source-han-serif
      pkgs.source-han-sans-vf-ttf
      pkgs.source-han-sans-vf-otf
      pkgs.source-han-sans
      pkgs.source-han-mono
      pkgs.source-han-code-jp
      pkgs.font-awesome
      pkgs.lexend
      pkgs.material-symbols
      pkgs.wqy_zenhei
      pkgs.wqy_microhei
      pkgs.nur.repos.rewine.ttf-wps-fonts
      # microsoft fonts
      pkgs.corefonts
      # pkgs.vistafonts-cht
      pkgs.vistafonts-chs
      ivySCI
      # pkgs.vistafonts
      pkgs.gnomeExtensions.system-monitor
      pkgs.gnomeExtensions.systemd-manager
      pkgs.gnomeExtensions.appindicator
      pkgs.gnomeExtensions.kimpanel
    # pkgs.unstable.vivaldi
    # pkgs.unstable.vivaldi-ffmpeg-codecs
    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/xwu/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    # EDITOR = "emacs";
  };


#   permittedInsecurePackages = [
#                "openssl-1.1.1w"
#              ];


  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
