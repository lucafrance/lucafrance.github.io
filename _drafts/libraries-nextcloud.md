---
title: Syncing special Windows folders with Nextcloud instead of OneDrive
tags: []
mastodon: 
---

There are [special folders](https://learn.microsoft.com/en-us/dotnet/api/system.environment.specialfolder) which [can be synchronised with OneDrive](https://support.microsoft.com/en-gb/onedrive/back-up-your-folders-with-onedrive) together with the main OneDrive folder: documents, pictures, desktop, music, videos.

I am no longer using OneDrive, but wanted to keep synchronising these folders.

Go to OneDrive's settings, then *Manage backup*, and deactivate the toggle for all folders.
Click *Stop backup and choose where to keep files* > *Only on my PC* > *Continue*.
{:refdef: style="text-align: center;"}
![](/assets/2026/special-folders-nextcloud/onedrive-settings-1.png)
![](/assets/2026/special-folders-nextcloud/onedrive-settings-2.png)
![](/assets/2026/special-folders-nextcloud/onedrive-settings-3.png)
{: refdef}

The special folders should now be in your user profile folder.
You can paste `%USERPROFILE%` in Windows Explorer's address bar to open it directly.

For each special folders, open the properties, *Location*, then click *Move*.
The new directory does not need to keep the same name.
I use the `Windows-` prefix to distinguish these folders from the ones created by me.

![](/assets/2026/special-folders-nextcloud/folder-properties-1.png)
![](/assets/2026/special-folders-nextcloud/folder-properties-2.png)

Click on *Apply* and confirm twice.

![](/assets/2026/special-folders-nextcloud/folder-properties-3.png)
![](/assets/2026/special-folders-nextcloud/folder-properties-4.png)


I am using a self-hosted [Nextcloud](https://nextcloud.com/) instance, but the same approach should work for any cloud service.
