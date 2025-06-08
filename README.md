# Disk_Tamper_Scanner
𝘝𝘦𝘳𝘪𝘧𝘺 𝘴𝘵𝘰𝘳𝘢𝘨𝘦. 𝘛𝘳𝘶𝘴𝘵 𝘺𝘰𝘶𝘳 𝘩𝘢𝘳𝘥𝘸𝘢𝘳𝘦.

**Description**

Disk Tamper Scanner is a high-assurance shell script designed to detect tampered, fake, or manipulated storage devices by leveraging the destructive testing capability of f3probe. Whether you're verifying a suspicious USB drive, SSD, or HDD, this script performs real-time forensic validation to expose fake capacity or misleading controller behavior. Built for operators, security professionals, and privacy-conscious users, this tool enables reliable trust verification with minimal effort.
**Table of Contents**

    1. Description
    2. Installation
    3. Usage
    4. Features
    5. Tests
    6. Disclaimer
    
**Installation**

This program is compatible with Arch Linux and Arch-based distributions.
To install:

    1. Clone the repository:
    • bash
    • CopyEdit
    • git clone https://github.com/yourusername/disk_tamper_scanner.git
    • cd disk_tamper_scanner
    • chmod +x disk_tamper_scanner.sh
    
    2. Run the script:
    • bash
    • CopyEdit
    • ./disk_tamper_scanner.sh
    
    3. If f3 is not installed, the script will automatically clone it from the AUR and install it via makepkg.
    
**Usage**

To use this program, follow these steps:

    1. Execute the script from the terminal:
    • bash
    • CopyEdit
    • ./disk_tamper_scanner.sh
    
    2. When prompted:
        ◦ Enter Y if you already have f3 installed
        ◦ Enter N to allow the script to install f3 from the AUR
        
    3. Provide the full device path (e.g., /dev/sdb) of the drive you wish to scan.
    
    4. The script will initiate a destructive probe of the device, analyzing real vs reported storage behavior.
    
**Features**

**Storage Tamper Detection:**

    • Uses f3probe to detect fake capacity drives
    • Identifies altered controllers and storage lies
    • Verifies integrity of USB sticks, SSDs, and HDDs
    
**Auto Installation Logic:**

    • Automatically installs f3 from AUR if missing
    
**Operator-Safe Prompting:**

    • Device path confirmation and visible warnings before scanning
    
**Silent Execution and Clean Output:**

    • Designed for field use with minimal interaction
    
**Tests**

**Tested on:**

    • Generic 4GB counterfeit USB drives
    • Sandisk, Kingston, and no-name SSDs
    • Arch Linux 2024.12+ using bash and core utilities
    
**QA Rating:** Stable for forensic and operational use. Not intended for consumer or GUI workflows.

**Disclaimer**

This software is provided "as-is" without any warranties, guarantees, or implied fitness for a particular purpose.
By using this tool, you agree to the following:
    • You are fully responsible for verifying your device path before executing the script.
    • The author accepts no liability for data loss, hardware damage, system instability, or any direct/indirect consequences resulting from use.
    • This is a destructive tool and will erase all data on the selected device.
    • Intended for educational, forensic, and operational use only.
    
Use at your own risk.
