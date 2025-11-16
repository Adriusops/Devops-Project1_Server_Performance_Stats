echo "Server Stats Launching..."
# CPU USAGE PART
# L'IDLE = a combien de pourcent est inactif le cpu, on fait 1 2 car sinon on a la moyenne depuis le boot
CPU_IDLE=$(vmstat 1 2 | tail -1 | awk '{print $15}')
# 2 () car on fait un calcul, 1 () quand on execute une commande
CPU_USAGE=$((100 - CPU_IDLE))

echo "=== CPU ==="
echo "-> Utilisation CPU : $CPU_USAGE%"

# MEMORY USAGE PART
ACTIVE_MEMORY=$(vmstat -a 1 2 | tail -1 | awk '{print $6}')
INACTIVE_MEMORY=$(vmstat -a 1 2 | tail -1 | awk '{print $5}')
TOTAL_MEMORY=$(grep MemTotal /proc/meminfo | awk '{print $2}')
MEMORY_USAGE=$(((ACTIVE_MEMORY + INACTIVE_MEMORY * 100) / TOTAL_MEMORY))

echo "=== RAM ==="
echo "RAM Total : $((TOTAL_MEMORY / 1024)) MB"
echo "RAM Active : $((ACTIVE_MEMORY + INACTIVE_MEMORY / 1024)) MB"
echo "-> Utilisation de la RAM : $MEMORY_USAGE%"

# DISK USAGE PART
TOTAL_DISK=$(df -h / | tail -1 | awk '{print $2}')
AVAILABLE_DISK=$(df -h / | tail -1 | awk '{print $4}')
DISK_USAGE=$(df -h / | tail -1 | awk '{print $5}')

echo "=== DISK ==="
echo "DISK Total : $TOTAL_DISK"
echo "DISK Disponible : $AVAILABLE_DISK"
echo "-> Utilisation du disk : $DISK_USAGE"

# TOP 5 PROCESSES PART
TOP5CPU=$(ps aux --sort -%cpu | head -n 6 | tail -n 5)
TOP5MEM=$(ps aux --sort -%mem | head -n 6 | tail -n 5)

echo "=== TOP 5 PROCESSES ==="
echo "BY CPU USAGE :"
echo "$TOP5CPU"
echo "BY MEMORY USAGE :"
echo "$TOP5MEM"
