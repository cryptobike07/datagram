 Datagram Node One-Click Setup by @admirkhen

This is a one-click smart script to run the **Datagram Node CLI** on any Ubuntu-based machine — including VPS or Termux QEMU, Your local PC.

> ✅ Built by Saint Khen — [@admirkhen](https://twitter.com/admirkhen)

---

## ⚙️ What This Script Does

- Downloads the latest `datagram` binary (if missing)
- Prompts for your **Datagram API key**
- Starts the node in the background and shows status
- Supports simple commands: `start`, `stop`, `status`, `restart`

---

## 🚀 Usage Guide

Step 1: Prep Termux Environment
```bash
pkg update && pkg upgrade -y
```
```bash
pkg install wget curl proot unzip tar -y
```
```bash
pkg install x11-repo -y
```
```bash
pkg install qemu-utils qemu-system-x86_64 -y
```


---

Step 2: Download Debian VM Image
```bash
mkdir -p ~/qemu-debian && cd ~/qemu-debian
wget https://cloud.debian.org/images/cloud/bullseye/latest/debian-11-nocloud-amd64.qcow2 -O debian-11.qcow2
```

---

Step 3: Launch Debian VM
```
qemu-system-x86_64 \
  -m 2048 \
  -smp 2 \
  -drive file=debian-11.qcow2,format=qcow2 \
  -net nic -net user,hostfwd=tcp::2222-:22 \
  -nographic

```
Login: root
```bash
root
```
Step 4: update and upgrade 
```bash
apt update && apt upgrade -y
```
```bash
apt install curl wget git build-essential -y
```
```
apt install procps -y
```


### 1. Download & Make Executable

```bash
git clone https://github.com/emmogrin/datagram.git
cd datagram
chmod +x datagram.sh
```

🧪 How to Use the Script
---

Start the node (prompts for API key)
```
./datagram.sh start
```
Stops the running node
```
./datagram.sh stop
```
Checks if node is running ✅ or not ❌ (maybe after a reboot)
```
./datagram.sh status
```
Stops + restarts the node (asks for key again)
```
./datagram.sh restart
```

YOU MUST BE IN THE DATAGRAM DIR FOR THOSE COMMANDS TO WORK.
```
cd
```
```
cd datagram
```
To remove the directory from PC
```
rm -rf datagram
```

🙏 Credits

Made with ❤️ by @admirkhen
Follow for Web3 node guides, farming automation, and drops.
