---
title: Obsidian versioning with git and GitHub
tags: []
mastodon: https://mastodon.social/@lucafeu/115989160216319108
---

An Obsidian vault can be versioned efficiently with git, as it consists mostly of markdown files.
The right plugin automates committing and pushing to a remote.
Here is how to do it with GitHub.

## Set up the GitHub repository

Create a new repository and set the visibility to private, unless you plan on sharing your obsidian vault with the internet.

![](/assets/2023/obsidian-git/new-repo-private.png)

Commit a `.gitignore` file with the following lines.
The `.gitignore` is set up to ignore the whole `.obsidian` folder by default and only include explicitly mentioned configuration files.

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

![](/assets/2023/obsidian-git/add-gitignore.png)

## Set up the Obsidian vault 

Clone the repository you just created.
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


*This article has been updated since the first publication.*
*Thank you [BrandonTheTinkerer](https://medium.com/@brandonthetinkerer) for [the suggestion](https://medium.com/p/d739a6944583).*

[^copygit]: You can copy the `.git` folder to the vault instead of the other way around.
