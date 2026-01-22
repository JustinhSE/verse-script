echo ""

# Header
echo -e "\033[1;37m:: Daily Bread ::\033[0m"

# Top border
echo -e "\033[38;5;82m┌──────────────────────────────────────────────────────────┐\033[0m"

# Verse line
echo -e "\033[38;5;118m│ We may throw the dice,                                   │\033[0m"
echo -e "\033[38;5;154m│ but the LORD determines how they fall.                   │\033[0m"
echo -e "\033[38;5;190m│ ~ Proverbs 16:33                                         │\033[0m"

# Bottom border
echo -e "\033[38;5;214m└──────────────────────────────────────────────────────────┘\033[0m"

echo ""
# Dice roll animation sliding to the right
dice_faces=(
"┌───────┐
│       │
│   ●   │
│       │
└───────┘"

"┌───────┐
│ ●     │
│       │
│     ● │
└───────┘"

"┌───────┐
│ ●     │
│   ●   │
│     ● │
└───────┘"

"┌───────┐
│ ●   ● │
│       │
│ ●   ● │
└───────┘"

"┌───────┐
│ ●   ● │
│   ●   │
│ ●   ● │
└───────┘"

"┌───────┐
│ ●   ● │
│ ●   ● │
│ ●   ● │
└───────┘"
)


# Colors for animation
colors=(196 202 208 214 220 226 190 154 118 82)

# Roll animation (in place)
tput civis  # optional, hide cursor

# Save cursor position once, right where you want the top-left of the dice
printf "\033[s"

for i in {1..14}; do
  face=$((RANDOM % 6))
  color=${colors[$((i % ${#colors[@]}))]}

  # Restore cursor, clear the dice area, then draw the face
  printf "\033[u"              # restore saved position
  printf "\033[J"              # clear from cursor down (optional but safe)[web:4]
  printf "\033[38;5;%sm" "$color"

  # Print the 5 lines of the selected face, with explicit newlines
  printf "%s\n" "${dice_faces[$face]}"

  printf "\033[0m"             # reset color
  sleep 0.07
done

# Final roll, same position
final=$((RANDOM % 6))
printf "\033[u\033[J"          # restore and clear
printf "\033[1;38;5;220m%s\n\033[0m" "${dice_faces[$final]}"

tput cnorm 
