---
title: Obsidian versioning with git and GitHub
tags: []
---

An Obsidian vault can be versioned efficiently with git, as it consists mostly of markdown files.
The right plugin automates committing and pushing to a remote.
Here is how to do it with GitHub.

## Set up the GitHub repository

Fork this [template repository in GitHub](https://github.com/lucafrance/obsidian-vault-template), which includes a ready to use `.gitignore` file.
The `.gitignore` is set up to ignore the whole `.obsidian` folder and only include explicitly mentioned configuration files.

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

Set the repository visibility to private, unless you plan on sharing your obsidian vault with the internet.
You can also rename the repository before cloning it.

## Set up the Obsidian vault 

If you want to use an existing vault, move all files to the cloned repository (including the `.obsidian` directory), then open the vault in the new folder with Obsidian[^copygit].
If not, start a new vault in the folder of the repository.

![](/assets/2023/obsidian-git/obsidian-open-create-vault.png)

## Configure the plugin

Go to *Options* > *Community plugins*.
If necessary, turn on the community plugins.

![](/assets/2023/obsidian-git/turn-on-community-plugins.png)

Click *Browse*, then install and enable the [*Obsidian Git*](https://github.com/denolehov/obsidian-git) plugin by Denis Olehov.

![](/assets/2023/obsidian-git/obsidian-options-community-browse.png)

![](/assets/2023/obsidian-git/plugin-obsidian-git.png)

Enter a backup interval in the obsidian vault.
The plugin will then regularly commit your changes and push them to GitHub.
I also recommend disabling the notifications.

![](/assets/2023/obsidian-git/backup-interval.png)

![](/assets/2023/obsidian-git/disable-notifications.png)

## Conclusion

Done! Your obsidian vault is now backed up to GitHub at regular intervals.

![](/assets/2023/obsidian-git/github-my-vault.png)

[^copygit]: You can copy the `.git` folder to the vault instead of the other way around.
