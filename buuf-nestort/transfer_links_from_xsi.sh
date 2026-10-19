#!/nix/store/7ik8057hajl6vq9j40h3jracxjn0bb5x-bash-5.3p15/bin/bash

if [ "$#" -ne 1 ]; then
    echo -e "\nThis script attempts to transfers all the xsi-*-symbolic.svg icons into buuf-nestort. It should be executed in buuf-nestort's root folder.\n"
    echo -e "Usage: $(basename "$0") <directory where xsi icons are>"
    echo -e "eg: $(basename "$0") . ~/Themes/icon_sets/git/xapp-symbolic-icons/icons/symbolic\n"
    exit 1
fi

xsi_icon_path="$1"

declare -a FOLDERS=(actions applets apps categories devices emblems emotes mimetypes places status)

for icon in $(ls "$xsi_icon_path"); do
    echo -e "\n\n\nfound $icon..."
    icon_no_ext="${icon%.*}" # remove the extension
    icon_no_xsi=${icon_no_ext#xsi-} # remove the xsi- prefix 
    icon_no_xsi_no_symbolic=${icon_no_xsi%-symbolic} # remove the xsi- prefix 
    echo "Icon we should look for: $icon_no_xsi and or $icon_no_xsi_no_symbolic"
    # buuf_icon_symbolic="$(find . -name "$icon_no_xsi.png" | head -n 1)"
    # buuf_icon_no_symbolic="$(find . -name "$icon_no_xsi_no_symbolic.png" | head -n 1)"
    echo -e "found $buuf_icon_symbolic and $buuf_icon_no_symbolic"
    link_created="no"
    for folder in "${FOLDERS[@]}"; do
        [ $link_created = "yes" ] && break # if we've found it, just skip the following. There really should be just one instance of an icon name, whatever the directory
        echo "   ...searching for file in buuf, directory $folder"
        if [ -f "$folder/$icon_no_xsi_no_symbolic.png" ] || [ -L "$folder/$icon_no_xsi_no_symbolic.png" ]; then
            # echo "   simulating link... that would be: ln "-s" "../"$folder/$icon_no_xsi_no_symbolic.png" "symbolic/xsi/$icon"
            [ -e "symbolic/xsi/$icon_no_ext.png" ] || ln -s "../../$folder/$icon_no_xsi_no_symbolic.png" "symbolic/xsi/$icon_no_ext.png" # creating only if it does not exist
            link_created="yes"
        fi
    done
    [ $link_created = "no" ] && echo "WARNING! couldn't find a suitable icon to link for $icon_no_ext"
done;

exit 0



