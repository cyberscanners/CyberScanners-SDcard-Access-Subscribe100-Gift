#!/data/data/com.termux/files/usr/bin/bash

# Install initial dependencies silently
pkg install figlet toilet lolcat -y > /dev/null 2>&1

# Start splash
clear
figlet -f slant "CYBER" | lolcat
figlet -f slant "SCANNERS" | lolcat
figlet -f slant "100 SUB GIFT" | lolcat
echo -e "\nInitializing CyberScanners SD Tool..." | lolcat
echo -e "\n🔧 Developer: CYBER BLACK LION\n" | lolcat
sleep 1

# Loading animation
echo -ne "LOADING" | lolcat
for i in {1..12}; do echo -n "." | lolcat; sleep 0.2; done
echo -e "\nSYSTEM STABLE ✅" | lolcat
sleep 1

# Countdown
echo -e "\n🌀 Starting in:" | lolcat
for i in {5..1}; do echo -e "⏳ $i" | lolcat; sleep 0.5; done

termux-open-url https://youtube.com/@slcyberscanners?si=lttomdY9EroTn8PP

# Ask for SD Card Path
echo -e "\n📂 Enter your SD Card full path (e.g., /storage/XXXX-XXXX):" | lolcat
read -p "🔧 SD_CARD_PATH > " CUSTOM_SD

# Validate path
if [ ! -d "$CUSTOM_SD" ]; then
    echo -e "\n❌ Invalid path! SD Card not found." | lolcat
    exit 1
fi

# Create working directory on SD card
INSTALL_DIR="$CUSTOM_SD/Termux-ToolKit"
mkdir -p "$INSTALL_DIR"

# Setup Termux storage
termux-setup-storage
sleep 1

# Display paths
echo -e "\n📦 Installation Target: $INSTALL_DIR" | lolcat
sleep 1

# Log internal files
echo -e "\n📁 Accessing Internal Storage..." | lolcat
cd "$HOME/storage/shared" || exit 1
ls -lh | lolcat
sleep 1

# Install useful packages to SD Card logs
PACKAGES=(git curl wget python ruby php nano vim openssh tsu figlet toilet lolcat neofetch nmap net-tools)
echo -e "\n📦 Installing Termux packages..." | lolcat

for pkg in "${PACKAGES[@]}"; do
    echo -e "\n📦 Installing: $pkg" | lolcat
    pkg install -y "$pkg" > "$INSTALL_DIR/${pkg}_install.log" 2>&1
    echo "✅ $pkg Installed. Log saved." | lolcat
done

# Clone GitHub tools
echo -e "\n🔁 Cloning Tools to SD Card..." | lolcat
TOOL_REPOS=(
    "https://github.com/sqlmapproject/sqlmap"
    "https://github.com/htr-tech/zphisher"
)

for repo in "${TOOL_REPOS[@]}"; do
    REPO_NAME=$(basename "$repo")
    git clone "$repo" "$INSTALL_DIR/$REPO_NAME" &>/dev/null
    echo "✅ $REPO_NAME cloned to $INSTALL_DIR/$REPO_NAME" | lolcat
done

# Simulate memory flood
echo -e "\n💣 Simulating Memory Flood..." | lolcat
MEMBAR="▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓"
for i in {1..10}; do
    echo -ne "${MEMBAR:0:$((i*5))}" | lolcat
    echo "  $(($i*10))%" | lolcat
    sleep 0.3
done

figlet "OVERLOAD!" | lolcat
sleep 1

# Show real-time stats
echo -e "\n📊 Real-Time System Stats\n" | lolcat
echo -e "🔬 RAM Usage:" | lolcat
free -h | lolcat

echo -e "\n💽 Disk Space:" | lolcat
df -h | lolcat

# Simulated hacker logs
echo -e "\n🧠 HACKER AI LOGS:" | lolcat
sleep 0.5
echo " > Injecting payload..." | lolcat; sleep 0.4
echo " > Bypassing firewall..." | lolcat; sleep 0.4
echo " > Exploiting port 4444..." | lolcat; sleep 0.4
echo " > Decrypting data stream..." | lolcat; sleep 0.4
echo " > Access Granted ✔️" | lolcat

# Done
figlet -f slant "MISSION COMPLETE" | lolcat
echo -e "\n🎉 SYSTEM READY. HACKING TOOLKIT INSTALLED TO SD CARD." | lolcat
echo -e "🗂️ Tools saved in: $INSTALL_DIR" | lolcat
