# 🛰️ Datagram Node One-Click Setup by @admirkhen

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
