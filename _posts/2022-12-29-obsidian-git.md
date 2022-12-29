---
title: How to use Obsidian with git and GitHub
tags: []
---

- configura il plugin
  - disable notifications
  - update intervall
  - push on backup per 

Fork this [template repository in GitHub](https://github.com/lucafrance/obsidian-vault-template), which includes a ready to use `.gitignore` file.
The `.gitignore` is set up to ignore by default the whole `.obsidian`folder and only include explicitly mentioned configuration files.

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

Set the repository visibility to private, unless you plan sharing your obsidian vault with the internet. If you want, you can also rename the repository.

![](/assets/2022/obsidian-git/visibility-setting.png)

Clone the forked repository to your machine.
The easiest way is to copy the command from GitHub. 

![](/assets/2022/obsidian-git/clone-repository.png)

If you want to use an existing vault, move all files to the cloned repository (including the `.obsidian` directory), then open the vault in the new folder with Obsidian.
If not, start a new vault in the the folder of the repository.

![](/assets/2022/obsidian-git/obsidian-open-create-vault.png)

Go to *Options* > *Community plugins*.
If necessary, turn on the community plugins.

![](/assets/2022/obsidian-git/turn-on-community-plugins.png)

Then install and the enable the [*Obsidian Git*](https://github.com/denolehov/obsidian-git) plugin by Denis Olehov. 

![](/assets/2022/obsidian-git/obsidian-options-community-browse.png)

![](/assets/2022/obsidian-git/plugin-obsidian-git.png)
