#!/bin/bash

# Color Codes
RED='\033[1;31m'; GREEN='\033[1;32m'; YELLOW='\033[1;33m'
BLUE='\033[1;34m'; MAGENTA='\033[1;35m'; CYAN='\033[1;36m'
WHITE='\033[1;97m'; BOLD='\033[1m'; RESET='\033[0m'

# Rainbow Array
rainbow=($RED $YELLOW $GREEN $CYAN $BLUE $MAGENTA)

# Typing Effect
type() {
  text="$1"
  delay="${2:-0.002}"
  for ((i=0; i<${#text}; i++)); do
    echo -n "${text:$i:1}"
    sleep $delay
  done
  echo ""
}

# Spinner
spinner() {
  local pid=$!
  local delay=0.1
  local spinstr='|/-\'
  while ps -p $pid &>/dev/null; do
    local temp=${spinstr#?}
    printf " [%c]  " "$spinstr"
    local spinstr=$temp${spinstr%"$temp"}
    sleep $delay
    printf "\b\b\b\b\b\b"
  done
  printf "    \b\b\b\b"
}

# Rainbow Header
echo ""
msg="✨ Welcome to Subha Mondal's Terminal Portfolio ✨"
for ((i=0; i<${#msg}; i++)); do
  color=${rainbow[i % ${#rainbow[@]}]}
  echo -ne "${color}${msg:$i:1}${RESET}"
  sleep 0.02
done
echo -e "\n"

# Fancy Banner (requires figlet)
if command -v figlet >/dev/null 2>&1; then
  echo -e "${CYAN}"
  figlet -f slant "Subha Mondal"
  echo -e "${RESET}"
else
  type "🔔 Tip: Install figlet for better banners: sudo apt install figlet"
fi

# Simulate Loading
echo -ne "${YELLOW}🔄 Loading details"
(sleep 2) & spinner
echo ""

# Basic Info
echo -e "\n${BOLD}${MAGENTA}🧑 Name:${RESET} ${WHITE}Subha Mondal"
echo -e "${MAGENTA}🎓 Education:${RESET} ${WHITE}B.Tech in CSE at RCC-IIT (MAKAUT)"
echo -e "${MAGENTA}💼 Role:${RESET} ${WHITE}Full-Stack Developer | Tech Enthusiast | CSE Student"
echo -e "${MAGENTA}📱 Device:${RESET} ${WHITE}Redmi Note 11 Pro"
echo -e "${MAGENTA}📍 Location:${RESET} ${WHITE}Kolkata, India"

# Skills Section
echo -e "\n${BOLD}${CYAN}🛠️ Skills:${RESET}"
type "💻 MERN Stack (MongoDB, Express, React, Node.js)"
type "🎨 HTML, CSS, JavaScript, Tailwind, Figma, Photoshop"
type "🧠 C, Java, SQL, Bash, Git & GitHub"

# Projects Section
echo -e "\n${BOLD}${GREEN}🚀 Projects:${RESET}"
type "🔗 Full Stack LMS"
type "🔍 GitHub Profile Finder"
type "🧠 Virtual Assistant – Rosie"
type "💼 Job Board Website"
type "⚙️ Electronics Hub – Logic Gate Visualizer"

# Achievements
echo -e "\n${BOLD}${YELLOW}🏆 Achievements:${RESET}"
type "📗 Editor – 'মনকথা' at Kolkata Book Fair"
type "📘 Co-Editor – 'The Whisper of Quill'"
type "🎨 Cover Designer – Kuhutan Publishers"
type "🥉 3rd in GDG RCCIIT Portfolio Contest"
type "📽️ DSA Videos on YouTube"

# Roles
echo -e "\n${BOLD}${BLUE}🤝 Roles:${RESET}"
type "🧑‍💻 Campus Ambassador – DevTown, LetsUpgrade"
type "👨‍💻 Contributor – GSSOC Extended 2024"
type "🧪 Intern – CodSoft & Octanet"

# Contact
echo -e "\n${BOLD}${MAGENTA}🌐 Connect:${RESET}"
type "🔗 GitHub: https://github.com/webdevbysubha"
type "🔗 LinkedIn: https://linkedin.com/in/subha-mondal10"
type "🎬 YouTube: https://www.youtube.com/@subhamondal3.0"

# Outro
echo -e "\n${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "${MAGENTA}  🎉 Thank you for checking out my terminal portfolio! 🎉"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"
