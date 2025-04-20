#!/bin/bash

# ─── Color Codes ─────────────────────────────────────────────
RED='\033[1;31m'; GREEN='\033[1;32m'; YELLOW='\033[1;33m'
BLUE='\033[1;34m'; MAGENTA='\033[1;35m'; CYAN='\033[1;36m'
WHITE='\033[1;97m'; BOLD='\033[1m'; RESET='\033[0m'
rainbow=($RED $YELLOW $GREEN $CYAN $BLUE $MAGENTA)

# ─── Functions ───────────────────────────────────────────────
type() {
  text="$1"; delay="${2:-0.01}"
  for ((i=0; i<${#text}; i++)); do
    echo -ne "${text:$i:1}"
    sleep $delay
  done
  echo ""
}

rainbow_type() {
  text="$1"; delay="${2:-0.02}"
  for ((i=0; i<${#text}; i++)); do
    color=${rainbow[i % ${#rainbow[@]}]}
    echo -ne "${color}${text:$i:1}${RESET}"
    sleep $delay
  done
  echo ""
}

progress_bar() {
  echo -ne "${YELLOW}🔄 Loading details: ["
  for i in {1..30}; do
    echo -ne "#"
    sleep 0.03
  done
  echo -e "] Done!${RESET}"
}

# ─── Banner Name ──────────────────────────────────────────────
echo ""
if command -v figlet >/dev/null 2>&1; then
  echo -e "${CYAN}"
  figlet "Subha Mondal"
  echo -e "${RESET}"
else
  type "🔔 Tip: Install figlet for better banners: sudo apt install figlet"
fi

# ─── Welcome Message ──────────────────────────────────────────
rainbow_type "✨ Welcome to Subha Mondal's Terminal Portfolio ✨"
# ─── Coder ASCII Art ──────────────────────────────────────────
echo -e "${GREEN}"
cat << "EOF"
          ( •_•)
         <)   )╯  💻 Typing some epic code...
         /   \   

     ._________________________.
    |  _____________________  |
    | |                     | |
    | |   subha_portfolio   | |
    | |  $ ./start.sh       | |
    | |                     | |
    | |_____________________| |
    |_________________________|
EOF
echo -e "${RESET}"
sleep 1

progress_bar
sleep 0.5

# ─── Basic Info ───────────────────────────────────────────────
echo -e "\n${BOLD}${MAGENTA}🧑 Name:${RESET} ${WHITE}Subha Mondal"
echo -e "${MAGENTA}🎓 Education:${RESET} ${WHITE}B.Tech in CSE at RCC-IIT (MAKAUT)"
echo -e "${MAGENTA}💼 Role:${RESET} ${WHITE}Full-Stack Developer | Tech Enthusiast | CSE Student"
echo -e "${MAGENTA}📱 Device:${RESET} ${WHITE}Redmi Note 11 Pro"
echo -e "${MAGENTA}📍 Location:${RESET} ${WHITE}Kolkata, India"

# ─── Skills ───────────────────────────────────────────────────
echo -e "\n${BOLD}${CYAN}🛠️ Skills:${RESET}"
type "💻 MERN Stack (MongoDB, Express, React, Node.js)"
type "🎨 HTML, CSS, JavaScript, Tailwind, Figma, Photoshop"
type "🧠 C, Java, SQL, Bash, Git & GitHub"

# ─── Projects ─────────────────────────────────────────────────
echo -e "\n${BOLD}${GREEN}🚀 Projects:${RESET}"
type "🔗 Full Stack LMS"
type "🔍 GitHub Profile Finder"
type "🧠 Virtual Assistant – Rosie"
type "💼 Job Board Website"
type "⚙️ Electronics Hub – Logic Gate Visualizer"

# ─── Achievements ─────────────────────────────────────────────
echo -e "\n${BOLD}${YELLOW}🏆 Achievements:${RESET}"
type "📗 Editor – 'Monkotha' at Kolkata Book Fair"
type "📘 Co-Editor – 'The Whisper of Quill'"
type "🎨 Cover Designer – Kuhutan Publishers"
type "🥉 3rd in GDG RCCIIT Portfolio Contest"
type "📽️ DSA Videos on YouTube"

# ─── Roles ────────────────────────────────────────────────────
echo -e "\n${BOLD}${BLUE}🤝 Roles:${RESET}"
type "🧑‍💻 Campus Ambassador – DevTown, LetsUpgrade"
type "👨‍💻 Contributor – GSSOC Extended 2024"
type "🧪 Intern – CodSoft & Octanet"

# ─── Contact Info ─────────────────────────────────────────────
echo -e "\n${BOLD}${MAGENTA}🌐 Connect:${RESET}"
type "🔗 GitHub: https://github.com/webdevbysubha"
type "🔗 LinkedIn: https://linkedin.com/in/subha-mondal10"
type "🎬 YouTube: https://www.youtube.com/@subhamondal3.0"

# ─── Random Quote ─────────────────────────────────────────────
quotes=(
  "Keep pushing code, greatness awaits 💻"
  "Bug-free is a myth. Ship anyway 🚀"
  "Stay curious, keep building 🛠️"
  "Every line of code is a brushstroke in your masterpiece 🎨"
)
RANDOM_QUOTE=${quotes[$RANDOM % ${#quotes[@]}]}
echo -e "\n${CYAN}💬 Quote of the Day: ${WHITE}$RANDOM_QUOTE${RESET}"

# ─── Outro ────────────────────────────────────────────────────
echo -e "\n${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "${MAGENTA} 🎉 Thank you for checking out my terminal portfolio! 🎉"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"
