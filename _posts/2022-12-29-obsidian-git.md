---
title: How to version your Obsidian with git and GitHub
tags: []
---

An Obsidian vault consists of mostly of markdown files, which can be efficiently versioned by git.
With the right plugin, the versioning and pushing to a remote can be automated.
Here is how to do it with GitHub.

## Set up the GitHub repository

Fork this [template repository in GitHub](https://github.com/lucafrance/obsidian-vault-template), which includes a ready to use `.gitignore` file.
The `.gitignore` is set up to ignore by default the whole `.obsidian` folder and only include explicitly mentioned configuration files.

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

Set the repository visibility to private, unless you plan on sharing your obsidian vault with the internet. If you want, you can also rename the repository.

![](/assets/2022/obsidian-git/visibility-setting.png)

Clone the forked repository to your machine.

## Set up the Obsidian vault 

If you want to use an existing vault, move all files to the cloned repository (including the `.obsidian` directory), then open the vault in the new folder with Obsidian.
If not, start a new vault in the the folder of the repository.

![](/assets/2022/obsidian-git/obsidian-open-create-vault.png)

## Configure the plugin

Go to *Options* > *Community plugins*.
If necessary, turn on the community plugins.

![](/assets/2022/obsidian-git/turn-on-community-plugins.png)

Install and the enable the [*Obsidian Git*](https://github.com/denolehov/obsidian-git) plugin by Denis Olehov. 

![](/assets/2022/obsidian-git/obsidian-options-community-browse.png)

![](/assets/2022/obsidian-git/plugin-obsidian-git.png)

Enter a backup interval in the obsidian vault.
The plugin will then regularly commit the changes and push to GitHub.
I also recommend disabling the notifications.

![](/assets/2022/obsidian-git/backup-interval.png)

![](/assets/2022/obsidian-git/disable-notifications.png)

## Conclusion

Done! Your obsidian vault is now backup up to GitHub at regular intervals.

![](/assets/2022/obsidian-git/github-my-vault.png)
