#!/bin/bash

# ─── Color Codes ──────────────────────────────
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[1;37m'
BOLD='\033[1m'
BRIGHT_GREEN='\033[1;32m'
BRIGHT_BLUE='\033[1;34m'
BRIGHT_RED='\033[1;31m'
ORANGE='\033[38;5;208m'
PINK='\033[38;5;213m'
RESET='\033[0m'

# ─── Rainbow Typing ───────────────────────────
rainbow_type() {
    text="$1"
    colors=($RED $YELLOW $GREEN $CYAN $BLUE $MAGENTA)
    for (( i=0; i<${#text}; i++ )); do
        color=${colors[$((i % ${#colors[@]}))]}
        echo -ne "${color}${text:$i:1}${RESET}"
        sleep 0.05
    done
    echo
}

# ─── Simple Typing ────────────────────────────
type() {
    text="$1"
    for (( i=0; i<${#text}; i++ )); do
        echo -ne "${WHITE}${text:$i:1}${RESET}"
        sleep 0.01
    done
    echo
}

# ─── ASCII Art: Full Portfolio ────────────────
show_full_ascii() {
echo -e "${GREEN}"
cat << "EOF"

           _________________________________
          /                                /|
         /________________________________/ |
        |    ___________________________   | |
        |   |                           |  | |
        |   |  subha@dev:~$             |  | |
        |   |---------------------------|  | |
        |   |  Full-Stack Developer 🚀  |  | |
        |   |  MERN | DevOps | OSS 💡   |  | |
        |   |  Building with Passion ❤️ |  | |
        |   |___________________________|  | |
        |__________________________________|/
         \________________________________/
                  ||           ||
               ___||___________||____
              |______________________|
              | [ESC] [F1] [F2]...   |
              | [ Q ] [ W ] [ E ]... | 
              | [ A ] [ S ] [ D ]... |
              |    [   Space   ]     |
              '---------------------'

          ( •_•)
         <)   )╯  💻 Just coding some dreams....
         /   \ 
EOF
}

# ─── ASCII Art: Menu-Based ────────────────────
show_menu_ascii() {
cat << "EOF"
 __  __ ______ _   _ _    _ 
|  \/  |  ____| \ | | |  | |
| \  / | |__  |  \| | |  | |
| |\/| |  __| | . ` | |  | |
| |  | | |____| |\  | |__| |
|_|  |_|______|_| \_|\____/ 
                                            
EOF
}

# ─── User Choice Prompt ───────────────────────
echo ""
echo -e "${CYAN}${BOLD}How would you like to view the portfolio?${RESET}"
echo -e "${YELLOW}1) Show complete portfolio at once"
echo -e "2) Explore via interactive menu${RESET}"
echo ""
read -p "$(echo -e ${MAGENTA}"> Your choice (1 or 2): ${RESET}")" user_choice

# ─── Option 1: Full Portfolio ─────────────────
if [ "$user_choice" == "1" ]; then
  echo ""
  echo ""
  rainbow_type "✨ Welcome to Subha Mondal's Terminal Portfolio ✨"
  echo ""
  show_full_ascii
  echo ""
  echo -e "${ORANGE}━━━━━━━━━━━━━ Personal Info ━━━━━━━━━━━━━${RESET}"
  echo -e "\n${BOLD}${BRIGHT_GREEN}🧑 Name:${RESET} ${WHITE}Subha Mondal"
        echo -e "${BRIGHT_GREEN}🎓 Education:${RESET} ${WHITE}B.Tech in CSE at RCC-IIT (MAKAUT)"
        echo -e "${BRIGHT_GREEN}💼 Role:${RESET} ${WHITE}Full-Stack Developer | Tech Enthusiast | CSE Student"
        echo -e "${BRIGHT_GREEN}📱 Device:${RESET} ${WHITE}Redmi Note 11 Pro"
        echo -e "${BRIGHT_GREEN}📍 Location:${RESET} ${WHITE}Kolkata, India"

  echo -e "\n${RED}━━━━━━━━━━━━━ Skills ━━━━━━━━━━━━━${RESET}"
  type "💻 MERN Stack (MongoDB, Express, React, Node.js)"
  type "🎨 HTML, CSS, JavaScript, Tailwind, Figma, Photoshop"
  type "🧠 C, Java, SQL, Bash, Git & GitHub"

  echo -e "\n${PINK}━━━━━━━━━━━━━ Projects ━━━━━━━━━━━━━${RESET}"
  type "🔗 Full Stack LMS"
  type "🔍 GitHub Profile Finder"
  type "🧠 Virtual Assistant – Rosie"
  type "💼 Job Board Website"
  type "⚙️ Electronics Hub – Logic Gate Visualizer"

  echo -e "\n${CYAN}━━━━━━━━━━━━ Achievements ━━━━━━━━━━━━${RESET}"
  type "📗 Editor – 'Monkotha' at Kolkata Book Fair"
  type "📘 Co-Editor – 'The Whisper of Quill'"
  type "🎨 Cover Designer – Kuhutan Publishers"
  type "🥉 3rd in GDG RCCIIT Portfolio Contest"
  type "📽️ DSA Videos on YouTube"

  echo -e "\n${BRIGHT_GREEN}━━━━━━━━━━━━━━ Roles ━━━━━━━━━━━━━━━${RESET}"
  type "🧑‍💻 Campus Ambassador – DevTown, LetsUpgrade"
  type "👨‍💻 Contributor – GSSOC Extended 2024"
  type "🧪 Intern – CodSoft & Octanet"

  echo -e "\n${PINK}━━━━━━━━━━ Connect with Me ━━━━━━━━━━${RESET}"
  type "🌐 Website: https://portfoliosubha.vercel.app"
  type "🔗 GitHub: https://github.com/webdevbysubha"
  type "🧑‍💼 LinkedIn: https://linkedin.com/in/subha-mondal10"
  type "🎬 YouTube: https://www.youtube.com/@subhamondal3.0"

  echo -e "\n${BRIGHT_RED}━━━━━━━━━━━ Quote of the Day ━━━━━━━━━━━${RESET}"
  quotes=(
    "Keep pushing code, greatness awaits 💻"
    "Bug-free is a myth. Ship anyway 🚀"
    "Stay curious, keep building 🛠️"
    "Every line of code is a brushstroke in your masterpiece 🎨"
  )
  RANDOM_QUOTE=${quotes[$RANDOM % ${#quotes[@]}]}
  echo -e "${WHITE}$RANDOM_QUOTE${RESET}"

  echo -e "\n${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
  echo -e "${MAGENTA} 🎉 Thank you for checking out my terminal portfolio! 🎉"
  echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"

# ─── Option 2: Menu-Based ─────────────────────
elif [ "$user_choice" == "2" ]; then
  echo ""
  show_menu_ascii
  echo ""
  while true; do
    echo -e "${CYAN}1) Personal Info"
    echo -e "2) Skills"
    echo -e "3) Projects"
    echo -e "4) Achievements"
    echo -e "5) Roles"
    echo -e "6) Contact Info"
    echo -e "7) Quote of the Day"
    echo -e "8) Exit${RESET}"
    echo ""
    read -p "$(echo -e ${PINK}"> Choose an option: ${RESET}")" menu_choice

    case $menu_choice in
      1)
        echo ""
        echo -e "\n${BOLD}${ORANGE}🧑‍💻 Personal Info${RESET}"
        echo -e "\n${BOLD}${BRIGHT_GREEN}🧑 Name:${RESET} ${WHITE}Subha Mondal"
        echo -e "${BRIGHT_GREEN}🎓 Education:${RESET} ${WHITE}B.Tech in CSE at RCC-IIT (MAKAUT)"
        echo -e "${BRIGHT_GREEN}💼 Role:${RESET} ${WHITE}Full-Stack Developer | Tech Enthusiast | CSE Student"
        echo -e "${BRIGHT_GREEN}📱 Device:${RESET} ${WHITE}Redmi Note 11 Pro"
        echo -e "${BRIGHT_GREEN}📍 Location:${RESET} ${WHITE}Kolkata, India"
        echo ""
        ;;
      2)
        echo ""
        echo -e "\n${BOLD}${YELLOW}🛠️ Skills:${RESET}"
        type "💻 MERN Stack (MongoDB, Express, React, Node.js)"
        type "🎨 HTML, CSS, JavaScript, Tailwind, Figma, Photoshop"
        type "🧠 C, Java, SQL, Bash, Git & GitHub"
        echo ""
        ;;
      3)
        echo ""
        echo -e "\n${BOLD}${BRIGHT_GREEN}🚀 Projects:${RESET}"
        type "🔗 Full Stack LMS"
        type "🔍 GitHub Profile Finder"
        type "🧠 Virtual Assistant – Rosie"
        type "💼 Job Board Website"
        type "⚙️ Electronics Hub – Logic Gate Visualizer"
        echo ""
        ;;
      4)
        echo ""
        echo -e "\n${BOLD}${BRIGHT_RED}🏆 Achievements:${RESET}"
        type "📗 Editor – 'Monkotha' at Kolkata Book Fair"
        type "📘 Co-Editor – 'The Whisper of Quill'"
        type "🎨 Cover Designer – Kuhutan Publishers"
        type "🥉 3rd in GDG RCCIIT Portfolio Contest"
        type "📽️ DSA Videos on YouTube"
        echo ""
        ;;
      5)
        echo ""
        echo -e "\n${BOLD}${BRIGHT_BLUE}🤝 Roles:${RESET}"
        type "🧑‍💻 Campus Ambassador – DevTown, LetsUpgrade"
        type "👨‍💻 Contributor – GSSOC Extended 2024"
        type "🧪 Intern – CodSoft & Octanet"
        echo ""
        ;;
      6)
        echo ""
        echo -e "\n${BOLD}${ORANGE}🌐 Connect:${RESET}"
        type "🌐 Website: https://portfoliosubha.vercel.app"
        type "🔗 GitHub: https://github.com/webdevbysubha"
        type "🔗 LinkedIn: https://linkedin.com/in/subha-mondal10"
        type "🎬 YouTube: https://www.youtube.com/@subhamondal3.0"
        echo ""
        ;;
      7)
        echo ""
        quotes=(
          "Keep pushing code, greatness awaits 💻"
          "Bug-free is a myth. Ship anyway 🚀"
          "Stay curious, keep building 🛠️"
          "Every line of code is a brushstroke in your masterpiece 🎨"
        )
        RANDOM_QUOTE=${quotes[$RANDOM % ${#quotes[@]}]}
        echo -e "\n${BRIGHT_RED}💬 Quote of the Day: ${WHITE}$RANDOM_QUOTE${RESET}"
        echo ""
        ;;
      8)
        echo ""
        echo -e "${YELLOW}👋 Thank you for exploring the menu!${RESET}"
        echo ""
        break
        ;;
      *)
        echo ""
        echo -e "${RED}❌ Invalid choice. Try again.${RESET}"
        echo ""
        ;;
    esac
  done

# ─── Invalid Input ────────────────────────────
else
  echo -e "${RED}⚠️ Invalid input. Please run the script again and choose 1 or 2.${RESET}"
fi
