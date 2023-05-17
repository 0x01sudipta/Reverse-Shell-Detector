# Reverse Shell Detector
This script detects IP addresses associated with reverse shell connections to your server.


# Purpose of Reverse Shell Detector
One common method used by attackers to gain unauthorized access to servers is through the use of reverse shells. This method is employed by both novice attackers and advanced persistent threat (APT) hackers. By running this script, your server can be configured to send alerts whenever a reverse shell connection is detected.


#Usage
To use this script, follow these steps:

    1. Clone the repository using the following command: git clone https://github.com/0x01sudipta/Reverse-Shell-Detector.git
    2. Change to the directory by executing: cd Reverse-Shell-Detector
    3. Make the script executable with the command: chmod +x Reverse_Shell_Detector.sh
    4. Run the script using the command: ./Reverse_Shell_Detector.sh

The script will execute and display any IP addresses associated with ongoing reverse shell processes in the background.
