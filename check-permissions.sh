#!/bin/bash
echo "🔍 Searching for world-writable files..."
find / -type f -perm -0002 -exec ls -l {} \; 2>/dev/null

echo -e "\n🔍 Searching for SUID binaries..."
find / -perm -4000 -type f 2>/dev/null

echo -e "\n🔍 Searching for SGID binaries..."
find / -perm -2000 -type f 2>/dev/null

echo -e "\n✅ Scan complete."
