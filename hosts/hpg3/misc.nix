{pkgs, config, username, ...}:
#Placing files in the home directory 
{
    home.file."Pictures/Wallpapers" = {
    source = ../../config/home/misc/wallpapers;
    recursive = true;
  };
  home.file.".config/wlogout/icons" = {
    source = ../../config/home/misc/wlogout;
    recursive = true;
  };
  home.file.".local/share/fonts" = {
    source = ../../config/home/misc/fonts;
    recursive = true;
  };
  #home.file.".config/starship.toml".source = ../../config/starship.toml;
  home.file.".config/ascii-neofetch".source = ../../config/home/misc/ascii-neofetch;
  home.file.".base16-themes".source = ../../config/home/misc/base16-themes;
  home.file.".emoji".source = ../../config/home/misc/emoji;
  home.file.".face.icon".source = ../../config/home/misc/face.jpg;
  home.file.".config/neofetch/config.conf".text = ''
    print_info() {
        prin "$(color 6)  ZaneyOS $ZANEYOS_VERSION"
        info underline
        info "$(color 7)  VER" kernel
        info "$(color 2)  UP " uptime
        info "$(color 4)  PKG" packages
        info "$(color 6)  DE " de
        info "$(color 5)  TER" term
        info "$(color 3)  CPU" cpu
        info "$(color 7)  GPU" gpu
        info "$(color 5)  MEM" memory
        prin " "
        prin "$(color 1) $(color 2) $(color 3) $(color 4) $(color 5) $(color 6) $(color 7) $(color 8)"
    }
    distro_shorthand="on"
    memory_unit="gib"
    cpu_temp="C"
    separator=" $(color 4)>"
    stdout="off"
  '';
  home.file.".config/swappy/config".text = ''
    [Default]
    save_dir=/home/${username}/Pictures/Screenshots
    save_filename_format=swappy-%Y%m%d-%H%M%S.png
    show_panel=false
    line_size=5
    text_size=20
    text_font=Ubuntu
    paint_mode=brush
    early_exit=true
    fill_shape=false
  '';


}
