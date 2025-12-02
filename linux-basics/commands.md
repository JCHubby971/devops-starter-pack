# 🐧 Linux Basics — Commands

Ce fichier regroupe les commandes essentielles que j’ai apprises dans le cadre de mon parcours DevOps.

## 🧭 Navigation

- `pwd` — Affiche le dossier courant
- `ls -la` — Liste les fichiers/dossiers (détails + cachés)
- `cd <path>` — Naviguer entre dossiers

## 📁 Fichiers et répertoires

- `touch file.txt` — Créer un fichier
- `mkdir new_dir` — Créer un dossier
- `cp src dest` — Copier un fichier/dossier
- `mv src dest` — Déplacer/renommer
- `rm file.txt` — Supprimer un fichier
- `rm -r folder` — Supprimer un dossier

## 🔐 Permissions

- `ls -l` — Voir les permissions
- `chmod 755 script.sh` — Modifier les droits
- `chown user:group file` — Modifier propriétaire/groupe

## ⚙️ Processus

- `ps aux` — Lister les processus
- `top` — Voir l’activité en temps réel
- `kill PID` — Stopper un processus
- `kill -9 PID` — Forcer l’arrêt

## 🔄 Redirections & Pipes

- `>` — redirection (écrase)
- `>>` — redirection (ajoute)
- `|` — pipe

Exemples :

```bash
ls -la | grep ".sh"
echo "Hello DevOps" > note.txt