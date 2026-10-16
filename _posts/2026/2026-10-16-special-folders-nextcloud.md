---
title: Syncing special Windows folders with Nextcloud instead of OneDrive
tags: [English en, Windows, homelab]
mastodon: 
---

There are [special folders](https://learn.microsoft.com/en-us/dotnet/api/system.environment.specialfolder) that [can be synchronised with OneDrive](https://support.microsoft.com/en-gb/onedrive/back-up-your-folders-with-onedrive) alongside the main OneDrive folder: Documents, Pictures, Desktop, Music, and Videos.
Here is how I moved these folders' synchronisation to Nextcloud, although the same approach should work with any cloud service.

Go to OneDrive's settings and click *Manage backup*.
Turn off the toggle for each folder.
Click *Stop backup and choose where to keep files* > *Only on my PC* > *Continue*.
{:refdef: style="text-align: center;"}
![](/assets/2026/special-folders-nextcloud/onedrive-settings-1.png)
![](/assets/2026/special-folders-nextcloud/onedrive-settings-2.png)
![](/assets/2026/special-folders-nextcloud/onedrive-settings-3.png)
{: refdef}

The special folders should now be in your user profile folder.
You can open it by entering `%USERPROFILE%` in the Windows Explorer address bar.

For each special folder, open its properties, select *Location*, and click *Move*.
The new directory does not need to keep the same name.
I use the `Windows-` prefix to distinguish special folders from those I created.

{:refdef: style="text-align: center;"}
![](/assets/2026/special-folders-nextcloud/folder-properties-1.png)
![](/assets/2026/special-folders-nextcloud/folder-properties-2.png)
{: refdef}

Click *Apply* and confirm twice.

{:refdef: style="text-align: center;"}
![](/assets/2026/special-folders-nextcloud/folder-properties-3.png)
![](/assets/2026/special-folders-nextcloud/folder-properties-4.png)
{: refdef}

After the move, the special folder should be visible at the new location.
{:refdef: style="text-align: center;"}
![](/assets/2026/special-folders-nextcloud/folder-properties-5.png)
{: refdef}
