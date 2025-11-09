#!/bin/bash

# --- কালার কোড ডিফাইন করা ---
CYAN='\033[1;36m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
RED='\033[1;31m'
BLUE='\033[1;34m'
WHITE='\033[1;37m'
NC='\033[0m'

# --- ব্যবহারকারীর কাছ থেকে ইনপুট নেওয়া ---
clear
echo -e "${CYAN}--- অনুগ্রহ করে নিচের তথ্যগুলো পূরণ করুন ---${NC}"

# Location Data
echo -e "\n${CYAN}📍 লোকেশন ডেটা:${NC}"
read -p "Country: " country
read -p "City: " city
read -p "Coordinates (e.g., 24.885491° N, 90.731574° W): " coordinates
read -p "Time Zone (e.g., Asia/Dhaka): " timezone

# Personal Intelligence Analysis (PIA)
echo -e "\n${CYAN}👤 পার্সোনাল ইন্টেলিজেন্স অ্যানালাইসিস (PIA):${NC}"
read -p "Name: " target_name
read -p "NID Number: " nid_number
read -p "Date of Birth (e.g., 03 May 2004): " dob

# Threat Assessment
echo -e "\n${CYAN}🛡️ থ্রেট অ্যাসেসমেন্ট:${NC}"
read -p "Risk Level (Low/Medium/High): " risk_level
read -p "Sim Card Buying Date (e.g., 11 Jul 2020): " sim_date
read -p "Recommended Action: " rec_action

# Device Information
echo -e "\n${CYAN}📱 ডিভাইস ইনফরমেশন:${NC}"
read -p "Device (e.g., Xiaomi Redmi 12C): " device_model
read -p "IMEI: " imei
read -p "Operating System (e.g., Android 12): " os
read -p "Last Social Media Browsing (e.g., 30 Jan 2025 08:43 PM): " last_browsing
read -p "Battery Level (e.g., 29%): " battery
read -p "Network Type (e.g., 4G): " network_type

# Network Activity
echo -e "\n${CYAN}🌐 নেটওয়ার্ক অ্যাক্টিভিটি:${NC}"
read -p "Data Used (e.g., 548 MB / 20 GB): " data_used
read -p "VPN Status (Active/Inactive): " vpn_status
read -p "Most Used Social Media Applications (e.g., WhatsApp Facebook Chrome): " used_apps
read -p "Last IP Address (e.g., 104.81.XXX.XX): " ip_address

# Social Media Profiles
echo -e "\n${CYAN}👥 সোশ্যাল মিডিয়া প্রোফাইল:${NC}"
read -p "Facebook: " facebook
read -p "Twitter: " twitter
read -p "Instagram: " instagram
read -p "LinkedIn: " linkedin

# Call Analysis
echo -e "\n${CYAN}📞 কল অ্যানালাইসিস:${NC}"
read -p "Last Call (e.g., 31 Jan 2025 11:28 AM): " last_call
read -p "Total Calls: " total_calls
read -p "Frequent Contact 1: " freq_contact1
read -p "Frequent Contact 2: " freq_contact2
read -p "Frequent Contact 3: " freq_contact3

# --- ইনপুট নেওয়া শেষ, এখন আউটপুট দেখানো হবে ---
clear

# --- ফরম্যাট করা আউটপুট প্রিন্ট করা ---

# হেডার (পরিবর্তিত)
echo -e "${CYAN}Info By T4nv!\t\t\tStatus: ${GREEN}Active${NC}"
echo "======================================================"

# Location Data
echo -e "\n${CYAN}📍 Location Data${NC}"
echo -e "  Country: \t\t${WHITE}$country${NC}"
echo -e "  City: \t\t${WHITE}$city${NC}"
echo -e "  Coordinates: \t\t${WHITE}$coordinates${NC}"
echo -e "  Time Zone: \t\t${WHITE}$timezone${NC}"

# Personal Intelligence Analysis (PIA)
echo -e "\n${CYAN}👤 Personal Intelligence Analysis (PIA)${NC}"
echo -e "  Name: \t\t${WHITE}$target_name${NC}"
echo -e "  NID Number: \t\t${WHITE}$nid_number${NC}"
echo -e "  Date of Birth: \t${WHITE}$dob${NC}"

# Threat Assessment
echo -e "\n${CYAN}🛡️ Threat Assessment${NC}"
risk_color=$WHITE
if [[ "$risk_level" == "Low" || "$risk_level" == "low" ]]; then
  risk_color=$GREEN
elif [[ "$risk_level" == "Medium" || "$risk_level" == "medium" ]]; then
  risk_color=$YELLOW
elif [[ "$risk_level" == "High" || "$risk_level" == "high" ]]; then
  risk_color=$RED
fi
echo -e "  Risk Level: \t\t${risk_color}$risk_level${NC}"
echo -e "  Sim Card Buying Date: \t${WHITE}$sim_date${NC}"
echo -e "  Recommended Action: \t${WHITE}$rec_action${NC}"

# Device Information
echo -e "\n${CYAN}📱 Device Information${NC}"
echo -e "  Device: \t\t${WHITE}$device_model${NC}"
echo -e "  IMEI: \t\t${WHITE}$imei${NC}"
echo -e "  Operating System: \t${WHITE}$os${NC}"
echo -e "  Last Social Media Browsing: ${WHITE}$last_browsING${NC}"
echo -e "  Battery Level: \t${WHITE}$battery${NC}"
echo -e "  Network Type: \t${WHITE}$network_type${NC}"

# Network Activity
echo -e "\n${CYAN}🌐 Network Activity${NC}"
vpn_color=$RED
if [[ "$vpn_status" == "Active" || "$vpn_status" == "active" ]]; then
  vpn_color=$GREEN
fi
echo -e "  Data Used: \t\t${WHITE}$data_used${NC}"
echo -e "  VPN Status: \t\t${vpn_color}$vpn_status${NC}"
echo -e "  Most Used Social Media: \t${BLUE}$used_apps${NC}"
echo -e "  Last IP Address: \t${WHITE}$ip_address${NC}"

# Social Media Profiles
echo -e "\n${CYAN}👥 Social Media Profiles${NC}"
echo -e "  Facebook: \t\t${WHITE}$facebook${NC}"
echo -e "  Twitter: \t\t${WHITE}$twitter${NC}"
echo -e "  Instagram: \t\t${WHITE}$instagram${NC}"
echo -e "  LinkedIn: \t\t${WHITE}$linkedin${NC}"

# Call Analysis
echo -e "\n${CYAN}📞 Call Analysis${NC}"
echo -e "  Last Call: \t\t${WHITE}$last_call${NC}"
echo -e "  Total Calls: \t\t${WHITE}$total_calls${NC}"
echo -e "  Frequent Contacts: \t${WHITE}$freq_contact1${NC}"
echo -e "  \t\t\t${WHITE}$freq_contact2${NC}"
echo -e "  \t\t\t${WHITE}$freq_contact3${NC}"

echo "======================================================"
