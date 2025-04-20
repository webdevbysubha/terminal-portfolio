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
cat << "EOF"

echo ""
  rainbow_type "✨ Welcome to Subha Mondal's Terminal Portfolio ✨"
echo ""

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
  show_full_ascii
  
  echo -e "${CYAN}━━━━━━━━━━━━━ Personal Info ━━━━━━━━━━━━━${RESET}"
  echo -e "${BOLD}${MAGENTA}🧑 Name:${RESET} ${WHITE}Subha Mondal"
  echo -e "${MAGENTA}🎓 Education:${RESET} ${WHITE}B.Tech in CSE at RCC-IIT (MAKAUT)"
  echo -e "${MAGENTA}💼 Role:${RESET} ${WHITE}Full-Stack Developer | Tech Enthusiast | CSE Student"
  echo -e "${MAGENTA}📱 Device:${RESET} ${WHITE}Redmi Note 11 Pro"
  echo -e "${MAGENTA}📍 Location:${RESET} ${WHITE}Kolkata, India"

  echo -e "\n${CYAN}━━━━━━━━━━━━━ Skills ━━━━━━━━━━━━━${RESET}"
  type "💻 MERN Stack (MongoDB, Express, React, Node.js)"
  type "🎨 HTML, CSS, JavaScript, Tailwind, Figma, Photoshop"
  type "🧠 C, Java, SQL, Bash, Git & GitHub"

  echo -e "\n${CYAN}━━━━━━━━━━━━━ Projects ━━━━━━━━━━━━━${RESET}"
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

  echo -e "\n${CYAN}━━━━━━━━━━━━━━ Roles ━━━━━━━━━━━━━━━${RESET}"
  type "🧑‍💻 Campus Ambassador – DevTown, LetsUpgrade"
  type "👨‍💻 Contributor – GSSOC Extended 2024"
  type "🧪 Intern – CodSoft & Octanet"

  echo -e "\n${CYAN}━━━━━━━━━━ Connect with Me ━━━━━━━━━━${RESET}"
  type "🔗 GitHub: https://github.com/webdevbysubha"
  type "🔗 LinkedIn: https://linkedin.com/in/subha-mondal10"
  type "🎬 YouTube: https://www.youtube.com/@subhamondal3.0"

  echo -e "\n${CYAN}━━━━━━━━━━━ Quote of the Day ━━━━━━━━━━━${RESET}"
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
    echo -e "\n${BOLD}${BLUE}📂 MENU:${RESET}"
    echo -e "${CYAN}1) Personal Info"
    echo -e "2) Skills"
    echo -e "3) Projects"
    echo -e "4) Achievements"
    echo -e "5) Roles"
    echo -e "6) Contact Info"
    echo -e "7) Quote of the Day"
    echo -e "0) Exit${RESET}"
    read -p "$(echo -e ${PINK}"> Choose an option: ${RESET}")" menu_choice

    case $menu_choice in
      1)
        echo -e "\n${BOLD}${MAGENTA}🧑 Name:${RESET} ${WHITE}Subha Mondal"
        echo -e "${MAGENTA}🎓 Education:${RESET} ${WHITE}B.Tech in CSE at RCC-IIT (MAKAUT)"
        echo -e "${MAGENTA}💼 Role:${RESET} ${WHITE}Full-Stack Developer | Tech Enthusiast | CSE Student"
        echo -e "${MAGENTA}📱 Device:${RESET} ${WHITE}Redmi Note 11 Pro"
        echo -e "${MAGENTA}📍 Location:${RESET} ${WHITE}Kolkata, India"
        ;;
      2)
        echo -e "\n${BOLD}${CYAN}🛠️ Skills:${RESET}"
        type "💻 MERN Stack (MongoDB, Express, React, Node.js)"
        type "🎨 HTML, CSS, JavaScript, Tailwind, Figma, Photoshop"
        type "🧠 C, Java, SQL, Bash, Git & GitHub"
        ;;
      3)
        echo -e "\n${BOLD}${GREEN}🚀 Projects:${RESET}"
        type "🔗 Full Stack LMS"
        type "🔍 GitHub Profile Finder"
        type "🧠 Virtual Assistant – Rosie"
        type "💼 Job Board Website"
        type "⚙️ Electronics Hub – Logic Gate Visualizer"
        ;;
      4)
        echo -e "\n${BOLD}${YELLOW}🏆 Achievements:${RESET}"
        type "📗 Editor – 'Monkotha' at Kolkata Book Fair"
        type "📘 Co-Editor – 'The Whisper of Quill'"
        type "🎨 Cover Designer – Kuhutan Publishers"
        type "🥉 3rd in GDG RCCIIT Portfolio Contest"
        type "📽️ DSA Videos on YouTube"
        ;;
      5)
        echo -e "\n${BOLD}${BLUE}🤝 Roles:${RESET}"
        type "🧑‍💻 Campus Ambassador – DevTown, LetsUpgrade"
        type "👨‍💻 Contributor – GSSOC Extended 2024"
        type "🧪 Intern – CodSoft & Octanet"
        ;;
      6)
        echo -e "\n${BOLD}${MAGENTA}🌐 Connect:${RESET}"
        type "🔗 GitHub: https://github.com/webdevbysubha"
        type "🔗 LinkedIn: https://linkedin.com/in/subha-mondal10"
        type "🎬 YouTube: https://www.youtube.com/@subhamondal3.0"
        ;;
      7)
        quotes=(
          "Keep pushing code, greatness awaits 💻"
          "Bug-free is a myth. Ship anyway 🚀"
          "Stay curious, keep building 🛠️"
          "Every line of code is a brushstroke in your masterpiece 🎨"
        )
        RANDOM_QUOTE=${quotes[$RANDOM % ${#quotes[@]}]}
        echo -e "\n${CYAN}💬 Quote of the Day: ${WHITE}$RANDOM_QUOTE${RESET}"
        ;;
      0)
        echo -e "${YELLOW}👋 Thank you for exploring the menu!${RESET}"
        break
        ;;
      *)
        echo -e "${RED}❌ Invalid choice. Try again.${RESET}"
        ;;
    esac
  done

# ─── Invalid Input ────────────────────────────
else
  echo -e "${RED}⚠️ Invalid input. Please run the script again and choose 1 or 2.${RESET}"
fi
