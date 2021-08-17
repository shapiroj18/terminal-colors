# help menu
Help() {
    echo "Change color to your Mac OS Terminal"
    echo
    echo "Syntax: color [-h|s]"
    echo "options:"
    echo "-h|--help        Help menu."
    echo "-s|--save        Save current terminal color."
    echo "-r|--random      Get random terminal color from saved colors"
    echo "-d|--delete      Deletes current terminal from saved colors."
    echo "-c|--clear       Clear saved terminal colors."
}


# flags (this is useful: https://pretzelhands.com/posts/command-line-flags)
for arg in "$@"
do
    case "$arg" in
        -h|--help)
        Help
        exit
        ;;
    esac
done

if [ $# -eq 0 ]
then
    chmod +x random_terminal_color.scpt
    ./random_terminal_color.scpt
fi


for arg in "$@"
do
    case "$arg" in
        -r|--random)
        FILE=./saved_colors.txt
            if [ -f "$FILE" ]; then
            rand_color=$(shuf -n 1 ./saved_colors.txt)
            osascript -e """
            tell application \"Terminal\"
                set background color of selected tab of window 1 to {$rand_color}
            end tell
            """
        else
            echo "No color saved. Type color -h for help."
        fi
        shift
        ;;
        -s|--save)
        echo "Saving current color"
        chmod +x get_current_terminal_color.scpt
        ./get_current_terminal_color.scpt >> saved_colors.txt
        shift
        ;;
        -d|--delete)
        FILE=./saved_colors.txt
        if [ -f "$FILE" ]; then
            # sed on mac requires a backup file - https://stackoverflow.com/a/4247333/10002456
            chmod +x get_current_terminal_color.scpt
            current_color=$(./get_current_terminal_color.scpt)
            sed -i .bak "/$current_color/d" $FILE
            rm saved_colors.txt.bak
            echo "Deleted current color"
        fi
        shift
        ;;
        -c|--clear)
        rm saved_colors.txt
        shift
        ;;
    esac
done