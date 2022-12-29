---
title: How to use Obsidian with git and GitHub
tags: []
---

- setta remote to private
- clona il repository
- copia i file della tua obsidian library, assicuarti di copiare anche .obsidian
- apri la vault
- installa il plugin
- configura il plugin
  - disable notifications
  - update intervall
  - push on backup per 

Fork this [template repository in GitHub](https://github.com/lucafrance/obsidian-vault-template), which includes a ready to use `.gitignore` file. The `.gitignore` is set up to ignore by default the whole `.obsidian`folder and only include explicitly mentioned configuration files.

```
.obsidian/*
!.obsidian/app.json
!.obsidian/appearance.json
!.obsidian/config
!.obsidian/community-plugins.json
!.obsidian/core-plugins.json
!.obsidian/graph.json
!.obsidian/hotkeys.json
```

Set the repository visibility to private, unless you are ok with the whole internet seeing your obsidian vault.
