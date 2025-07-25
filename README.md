# 🛰️ Datagram Node One-Click Setup

---

## ⚙️ What This Script Does

- Downloads the latest `datagram` binary (if missing)
- Prompts for your **Datagram API key**
- Starts the node in the background and shows status
- Supports simple commands: `start`, `stop`, `status`, `restart`

---
1. Register in Datagram:
[https://dashboard.datagram.network](https://dashboard.datagram.network?ref=515818750)

Get the API, you will use it later:
Wallet > Licenses > License Key

Tutorial Below is for Linux. You can also run it using you Mac/Windows.
<img width="930" height="601" alt="Screenshot 2025-07-25 at 9 52 48 AM" src="https://github.com/user-attachments/assets/96157d2f-b526-4984-97d2-05c4c26a632a" />
https://dashboard.datagram.network/wallet > Download. 


2. Tutorial on Setting up VPS + Linux.

Rent a VPS VPS is (Virtual Private Server that runs 24/7) “I’m using VPS in all my Linux NODES.” Hardware Requirement: Works with simple hardware — easy to get started but I can run it in my VPS3.

How to Run Octra Node using VPS? Order Here: (Use the Link and Euro(€) For Discount) https://www.jdoqocy.com/click-101100040-15022370 Click Cloud VPS(I used VPS 3 coz I run other Nodes here) > Region Any(I used Japan) > Storage Type 1200GB > Ubuntu v22.04> Log in Password (Don’t forget) > 6–8 settings default only > Click Next > Fill up your details > Payment. 
“I used Gotymebank or Maya(both vitual cards) link to Paypal(all are perfored in the website). 
I paid €23 or 1500+ pesos for first month(+ set up fee), second only €14 or 900+ pesos .” Once Paid > Wait for the Email to Arrived > Follow instruction. 

Setting up on Your Laptop/PC Windows: Now you have your own VPS server. 
Download putty.org > log in to your IP there. After Connected, We can now Start. Still Confuse? More Guide in VPS Access: https://www.facebook.com/share/p/zhHCh3773653iXZF/ 
You have now your own Ubuntu(Linux Server) that runs 24/7 in other country. 
Let’s Navigate!



3. ## 🚀 Usage Guide


### 1. Install Screen(Ignore if you already have) and use screen.
Screen is like window that you can go back anytime.

```bash
apt install screen
screen -S datagram

```

### 2. Download & Make Executable

```bash
git clone https://github.com/emmogrin/datagram.git
cd datagram
chmod +x datagram.sh
```

🧪 How to Use the Script
---

Start the node (prompts for API key; paste the API Key(License Key you got Earlier)
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
<img width="714" height="272" alt="Screenshot 2025-07-25 at 9 14 55 AM" src="https://github.com/user-attachments/assets/8305f10c-fe79-47e5-bd4a-9c60779dba73" />

You can Also Check in Dashboard if Running.
<img width="1512" height="792" alt="Screenshot 2025-07-25 at 9 39 26 AM" src="https://github.com/user-attachments/assets/cb415176-67dc-4d7c-a061-f4f1f7d8ef52" />

```
Stops + restarts the node (asks for key again)
```
./datagram.sh restart
```
Remove Screen:
ctrl + ad
To go Back on Screen:
screen -R datagram


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
