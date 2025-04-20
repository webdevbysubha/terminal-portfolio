#!/bin/bash

# ─── Color Codes ─────────────────────────────────────────────────────
RED='\033[1;31m'; GREEN='\033[1;32m'; YELLOW='\033[1;33m'
BLUE='\033[1;34m'; MAGENTA='\033[1;35m'; CYAN='\033[1;36m'
WHITE='\033[1;97m'; BOLD='\033[1m'; RESET='\033[0m'
rainbow=($RED $YELLOW $GREEN $CYAN $BLUE $MAGENTA)

# ─── Typing Effect ───────────────────────────────────────────────────
type() {
  text="$1"; delay="${2:-0.01}"
  for ((i=0; i<${#text}; i++)); do
    echo -ne "${text:$i:1}"
    sleep $delay
  done
  echo ""
}

# ─── Rainbow Text ────────────────────────────────────────────────────
rainbow_type() {
  text="$1"; delay="${2:-0.02}"
  for ((i=0; i<${#text}; i++)); do
    color=${rainbow[i % ${#rainbow[@]}]}
    echo -ne "${color}${text:$i:1}${RESET}"
    sleep $delay
  done
  echo ""
}

# ─── Progress Bar ────────────────────────────────────────────────────
progress_bar() {
  echo -ne "${YELLOW}🔄 Loading: ["
  for i in {1..30}; do echo -ne "#"; sleep 0.02; done
  echo -e "] Done!${RESET}"
}

# ─── ASCII Art ───────────────────────────────────────────────────────
show_ascii_art() {
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
  echo -e "${RESET}"
}

# ─── Menu Functions ──────────────────────────────────────────────────
personal_info() {
  echo -e "\n${BOLD}${MAGENTA}🧑 Name:${RESET} ${WHITE}Subha Mondal"
  echo -e "${MAGENTA}🎓 Education:${RESET} ${WHITE}B.Tech in CSE at RCC-IIT (MAKAUT)"
  echo -e "${MAGENTA}💼 Role:${RESET} ${WHITE}Full-Stack Developer | Tech Enthusiast | CSE Student"
  echo -e "${MAGENTA}📱 Device:${RESET} ${WHITE}Redmi Note 11 Pro"
  echo -e "${MAGENTA}📍 Location:${RESET} ${WHITE}Kolkata, India"
}

skills() {
  echo -e "\n${BOLD}${CYAN}🛠️ Skills:${RESET}"
  type "💻 MERN Stack (MongoDB, Express, React, Node.js)"
  type "🎨 HTML, CSS, JavaScript, Tailwind, Figma, Photoshop"
  type "🧠 C, Java, SQL, Bash, Git & GitHub"
}

projects() {
  echo -e "\n${BOLD}${GREEN}🚀 Projects:${RESET}"
  type "🔗 Full Stack LMS"
  type "🔍 GitHub Profile Finder"
  type "🧠 Virtual Assistant – Rosie"
  type "💼 Job Board Website"
  type "⚙️ Electronics Hub – Logic Gate Visualizer"
}

achievements() {
  echo -e "\n${BOLD}${YELLOW}🏆 Achievements:${RESET}"
  type "📗 Editor – 'Monkotha' at Kolkata Book Fair"
  type "📘 Co-Editor – 'The Whisper of Quill'"
  type "🎨 Cover Designer – Kuhutan Publishers"
  type "🥉 3rd in GDG RCCIIT Portfolio Contest"
  type "📽️ DSA Videos on YouTube"
}

roles() {
  echo -e "\n${BOLD}${BLUE}🤝 Roles:${RESET}"
  type "🧑‍💻 Campus Ambassador – DevTown, LetsUpgrade"
  type "👨‍💻 Contributor – GSSOC Extended 2024"
  type "🧪 Intern – CodSoft & Octanet"
}

social_links() {
  echo -e "\n${BOLD}${MAGENTA}🌐 Connect:${RESET}"
  type "🔗 GitHub: https://github.com/webdevbysubha"
  type "🔗 LinkedIn: https://linkedin.com/in/subha-mondal10"
  type "🎬 YouTube: https://www.youtube.com/@subhamondal3.0"
}

quote() {
  quotes=(
    "Keep pushing code, greatness awaits 💻"
    "Bug-free is a myth. Ship anyway 🚀"
    "Stay curious, keep building 🛠️"
    "Every line of code is a brushstroke in your masterpiece 🎨"
  )
  RANDOM_QUOTE=${quotes[$RANDOM % ${#quotes[@]}]}
  echo -e "\n${CYAN}💬 Quote of the Day: ${WHITE}$RANDOM_QUOTE${RESET}"
}

# ─── Main Program ────────────────────────────────────────────────────
clear
rainbow_type "✨ Welcome to Subha Mondal's Terminal Portfolio ✨"
show_ascii_art

if command -v figlet >/dev/null 2>&1; then
  echo -e "${CYAN}"; figlet "Subha Mondal"; echo -e "${RESET}"
else
  type "🔔 Tip: Install figlet for better banners: sudo apt install figlet"
fi

progress_bar

while true; do
  echo -e "\n${BOLD}${YELLOW}📜 MENU:${RESET}"
  echo -e "${BOLD}${WHITE}1.${RESET} View Personal Info"
  echo -e "${BOLD}${WHITE}2.${RESET} View Skills"
  echo -e "${BOLD}${WHITE}3.${RESET} View Projects"
  echo -e "${BOLD}${WHITE}4.${RESET} View Achievements"
  echo -e "${BOLD}${WHITE}5.${RESET} View Roles"
  echo -e "${BOLD}${WHITE}6.${RESET} View Social Links"
  echo -e "${BOLD}${WHITE}7.${RESET} Quote of the Day"
  echo -e "${BOLD}${WHITE}8.${RESET} Exit"

  echo -ne "${CYAN}\nEnter your choice (1-8): ${RESET}"
  read choice

  case $choice in
    1) personal_info ;;
    2) skills ;;
    3) projects ;;
    4) achievements ;;
    5) roles ;;
    6) social_links ;;
    7) quote ;;
    8) echo -e "${MAGENTA}\n👋 Thank you for visiting! Keep coding dreams alive. 💻${RESET}"; break ;;
    *) echo -e "${RED}❌ Invalid option. Please choose between 1 and 8.${RESET}" ;;
  esac
done
