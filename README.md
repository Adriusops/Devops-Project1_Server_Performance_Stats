# Server Performance Stats

Un script bash pour analyser les statistiques de performance de base d'un serveur Linux.

## Description

Ce script permet de monitorer en temps réel les performances de votre serveur, incluant :
- Utilisation du CPU
- Usage de la mémoire (RAM)
- Espace disque disponible
- Processus les plus gourmands

## Installation

### 1. Cloner le repository
```bash
git clone https://github.com/Adriusops/Devops-Project1_Server_Performance_Stats.git
cd Devops-Project1_Server_Performance_Stats
```

### 2. Rendre le script exécutable
```bash
chmod +x server-stats.sh
```

## Utilisation

Exécutez simplement le script :
```bash
./server-stats.sh
```

## Prérequis

- Bash 4.0 ou supérieur
- Commandes système : `vmstat`, `df`, `ps`
- Système d'exploitation : Linux (Ubuntu, Debian, CentOS, etc.)

Projet motivé par les projets DevOps de [roadmap.sh](https://roadmap.sh/projects/server-stats)
