#!/data/data/com.termux/files/usr/bin/bash

# Install dependencies
figlet lolcat > /dev/null 2>&1

# Clear and start screen
clear
figlet -f slant "CYBER" | lolcat
figlet -f slant "SCANNERS" | lolcat
figlet -f slant "YOUTUBE" | lolcat
figlet -f slant "100" | lolcat
figlet -f slant "SUBSCRIBERS" | lolcat
figlet -f slant "GIFT" | lolcat
echo -e "\nInitializing CyberScanners SD Card Access Tool" | lolcat
echo -e "\n----->DEVALOPER CYBER BLACK LION<-----" | lolcat
sleep 1

# 🔄 Loading animation
echo -ne "\nLOADING" | lolcat
for i in {1..12}; do
    echo -n "." | lolcat
    sleep 0.2
done
echo -e "\nSYSTEM STABLE ✅\n" | lolcat
sleep 1

# 🕹️ Game-like countdown
echo -e "🔁 STARTING RUNNIG IN:\n" | lolcat
for i in {10..1}; do
    echo -e "⚡ $i ⚡" | lolcat
    sleep 0.4
done

figlet -f slant "SD CARD" | lolcat
figlet -f slant "ACCESS" | lolcat
sleep 1

# ⛓️ Storage Setup
termux-setup-storage
INTERNAL="$HOME/storage/shared"
EXTERNAL="$HOME/storage/external-1"

# Access Internal Storage
if [ -d "$INTERNAL" ]; then
    echo -e "\n📁 Accessing Internal Storage..." | lolcat
    cd "$INTERNAL" || exit 1
    ls -lh | lolcat
else
    echo -e "\n❌ Internal Storage Access Denied!" | lolcat
    exit 1
fi

sleep 1

termux-open-url https://youtube.com/@slcyberscanners?si=lttomdY9EroTn8PP

# Access External Storage or Scan
if [ -d "$EXTERNAL" ]; then
    echo -e "\n💾 External SD Card Access Granted..." | lolcat
    cd "$EXTERNAL" || exit 1
    ls -lh | lolcat
else
    echo -e "\n🔍 Scanning for SD Card..." | lolcat
    ALT_SD=$(ls /storage | grep -vE "emulated|self" | head -n 1)
    if [ -n "$ALT_SD" ]; then
        PATH_FOUND="/storage/$ALT_SD"
        echo -e "\n✅ SD Card Found at $PATH_FOUND" | lolcat
        cd "$PATH_FOUND" || exit 1
        ls -lh | lolcat
    else
        echo -e "\n❌ No SD Card Detected!" | lolcat
        exit 1
    fi
fi

sleep 1.5

# 🔋 Simulate memory overload
echo -e "\n💣 Injecting Memory Flood..." | lolcat
MEMBAR="▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓"
for i in {1..10}; do
    echo -ne "${MEMBAR:0:$((i*5))}" | lolcat
    echo "  $(($i*10))%" | lolcat
    sleep 0.3
done

figlet "OVERLOAD!" | lolcat
sleep 1

# 🔍 Real Info
echo -e "\n📊 Fetching Real-Time System Stats...\n" | lolcat
sleep 1
echo -e "\n🔬 RAM Usage:" | lolcat
free -h | lolcat

echo -e "\n💽 Disk Space:" | lolcat
df -h | lolcat

sleep 1

# 🧠 Hacker Logs (Fake Gameplay Style)
echo -e "\n🧠 HACKER AI LOGS:\n" | lolcat
echo -e " > Injecting payload..." | lolcat; sleep 0.5
echo -e " > Bypassing firewall..." | lolcat; sleep 0.5
echo -e " > Exploiting port 4444..." | lolcat; sleep 0.5
echo -e " > Decrypting data stream..." | lolcat; sleep 0.5
echo -e " > Access Granted ✔️" | lolcat

sleep 1
figlet -f slant "MISSION COMPLETE" | lolcat
echo -e "\n🎉 SYSTEM CONTROLLED. YOU WIN THE HACKING GAME. 🎮" | lolcat
