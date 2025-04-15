random_colors() {
    local comp=$((RANDOM % 3))
    local direction=$((RANDOM % 2))
    local r g b
    local colors=()

    case $comp in
        0)
            if [ $direction -eq 0 ]; then
                r_values=(0 1 2 3 4 5)
            else
                r_values=(5 4 3 2 1 0)
            fi
            g=$((RANDOM % 6))
            b=$((RANDOM % 6))
            for r in "${r_values[@]}"; do
                colors+=( $((16 + r*36 + g*6 + b)) )
            done
            ;;
        1)
            if [ $direction -eq 0 ]; then
                g_values=(0 1 2 3 4 5)
            else
                g_values=(5 4 3 2 1 0)
            fi
            r=$((RANDOM % 6))
            b=$((RANDOM % 6))
            for g in "${g_values[@]}"; do
                colors+=( $((16 + r*36 + g*6 + b)) )
            done
            ;;
        2)
            if [ $direction -eq 0 ]; then
                b_values=(0 1 2 3 4 5)
            else
                b_values=(5 4 3 2 1 0)
            fi
            r=$((RANDOM % 6))
            g=$((RANDOM % 6))
            for b in "${b_values[@]}"; do
                colors+=( $((16 + r*36 + g*6 + b)) )
            done
            ;;
    esac

    echo "${colors[@]}"
}

neofetch --ascii_distro --ascii_colors $(random_colors)