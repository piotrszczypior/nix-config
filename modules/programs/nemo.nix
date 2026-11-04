{ pkgs, ... }:
{
    programs.dconf = {
        enable = true;
        profiles.user.databases = [{
            settings = {
                "org/nemo/preferences" = {
                    default-folder-viewer = "list-view";
                    ignore-view-metadata = true;
                    default-sort-order = "atime";
                    default-sort-in-reverse-order = true;
                    sort-directories-first = true;
                    show-hidden-files = true;
                    show-image-thumbnails = "never";
                    date-format = "iso";
                    start-with-dual-pane = true;
                    start-with-sidebar = true;
                    side-pane-view = "places";
                };
                "org/nemo/window-state".start-with-sidebar = false;
                "org/nemo/list-view" = {
                    default-zoom-level = "smaller";
                    default-visible-columns = [ "name" "size" "type" "date_modified" "date_accessed" ];
                    default-column-order = [ "name" "size" "type" "date_modified" "date_accessed" ];
                };
            };
        }];
    };
    # After changing: nemo -q

    environment.systemPackages = [
        pkgs.nemo-with-extensions
        pkgs.gnome-themes-extra
        pkgs.adwaita-icon-theme
    ];
    environment.variables.GTK_THEME = "Adwaita:dark";
}