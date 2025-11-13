echo "Server Stats Launching..." 
# L'IDLE = a combien de pourcent est inactif le cpu, on fait 1 2 car sinon on a la moyenne depuis le boot 
CPU_IDLE=$(vmstat 1 2 | tail -1 | awk '{print $15}') 
# 2 () car on fait un calcul, 1 () quand on execute une commande 
CPU_USAGE=$((CPU_IDLE - 100)) 
echo "-> CPU_USAGE : $CPU_USAGE%"
