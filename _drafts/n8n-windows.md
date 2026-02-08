---
title: How to run n8n locally on Windows
tags: [AI]
mastodon: 
---

For anyone interested in n8n, there is a relatively easy way to try it for free, as much as you want.
You can run the [community edition of n8n](https://docs.n8n.io/hosting/community-edition-features/) locally for free.
This is a good option for local automation, learning about n8n, testing, or building a demo.
Here is a step-by-step guide to set it up on Windows 11[^npn-install].

[^npn-install]: n8n can be installed via [npm](https://docs.n8n.io/hosting/installation/npm/) or Docker. Here I show the Docker installation, which is recommended.

## Install or update the Windows Subsystem for Linux (WSL)

Right click on the Start menu, then click on *Terminal (Admin)*.

![Docker Desktop installation step 1](/assets/2026/n8n-windows/wsl-install-1.png)

Type `wsl --install`, then press Enter.
Reboot after the installation is complete.

![Docker Desktop installation step 2](/assets/2026/n8n-windows/wsl-install-2.png)

If you get the message `Windows Subsystem for Linux is already installed.`, then type `wsl --update` and press enter.

![Docker Desktop installation step 3](/assets/2026/n8n-windows/wsl-install-3.png)

![Docker Desktop installation step 4](/assets/2026/n8n-windows/wsl-install-4.png)

## Install Docker Desktop

Download [Docker Desktop](https://www.docker.com/products/docker-desktop/) and open the installer file[^docker-wsl].

![Docker Desktop website](/assets/2026/n8n-windows/docker-desktop-website.png)

[^docker-wsl]: You can install Docker directly over the WSL, but Docker Desktop simplifies the installation by executing automatically some of the configuration steps.

Click OK.
Windows containers aren’t required.

![Docker Desktop installation step 1](/assets/2026/n8n-windows/docker-install-1.png)

Wait for the installation to complete.

![Docker Desktop installation step 2](/assets/2026/n8n-windows/docker-install-2.png)

You might be prompted to log out at the end of the installation.

![Docker Desktop installation step 3](/assets/2026/n8n-windows/docker-install-3.png)


## Launch Docker Desktop for the first time

Start Docker Desktop, accept the Terms of Service.

![Docker Desktop installation step 4](/assets/2026/n8n-windows/docker-install-4.png)

You can skip creating an account.

![Docker Desktop installation step 5](/assets/2026/n8n-windows/docker-install-5.png)

Wait for the Docker Engine to start.

![Docker Desktop installation step 6](/assets/2026/n8n-windows/docker-install-6.png)

When ready, Docker Desktop should look like this.

![Docker Desktop installation step 7](/assets/2026/n8n-windows/docker-install-7.png)


## Set up an n8n Docker image

Click on *Volumes > Create a volume*.

![Docker container step 1](/assets/2026/n8n-windows/n8n-container-1.png)

Call the volume `n8n_data`, then create it.

![Docker container step 2](/assets/2026/n8n-windows/n8n-container-2.png)

The volume should show up in the list.
This is where the permanent data of your n8n instance will be stored.

![Docker container step 3](/assets/2026/n8n-windows/n8n-container-3.png)

Click on *Images > Search images to run*.

![Docker container step 4](/assets/2026/n8n-windows/n8n-container-4.png)

Search *n8n*.
Click on *Pull* for the `n8nio/n8n` image.

![Docker container step 5](/assets/2026/n8n-windows/n8n-container-5.png)

Wait for the image to be downloaded, then press *Esc* to close the search window.
You should now see the n8n image.

![Docker container step 6](/assets/2026/n8n-windows/n8n-container-6.png)


## Create an n8n container

Click on *Run*.

![Docker container step 7](/assets/2026/n8n-windows/n8n-container-7.png)

Open the optional settings and configure the container with the following parameters.
Replace `<YOUR_TIMEZONE>` with your time zone identifier as documented [here](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List), e.g. `Europe/Berlin` for Germany.

- Container name: `n8n`
- Ports
    - Host port: `5678`
- Volumes
    - Host path: `n8n_data`
    - Container path: `/home/node/.n8n`
- Variables
    - Variable: `GENERIC_TIMEZONE`, value: `<YOUR_TIMEZONE>`
    - Variable: `TZ`, value: `<YOUR_TIMEZONE>`
    - Variable: `N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS`, value: `true`
    - Variable: `N8N_RUNNERS_ENABLED`, value: `true`

![Docker container step 8](/assets/2026/n8n-windows/n8n-container-8.png)

![Docker container step 9](/assets/2026/n8n-windows/n8n-container-9.png)

If prompted by *Windows Security*, click *Cancel*.
Access isn’t required for local use.

![Windows defender prompt](/assets/2026/n8n-windows/n8n-defender.png)

If successful, Docker Desktop should look like this.

![Docker container step 10](/assets/2026/n8n-windows/n8n-container-10.png)


## Configure n8n

Your local n8n instance is available at [http://localhost:5678](http://localhost:5678).
You will be prompted to set up an owner account the first time you open the page.

**Note:** If you already have a n8n account, it is unrelated to this one.
You can reuse the same email you used for other n8n instances.

![n8n - Set up owner account](/assets/2026/n8n-windows/n8n-config-1.png)

**Optional:** You can activate your local instance to get some additional features.
You can skip this step and activate the instance afterwards.

![n8n - Get paid features](/assets/2026/n8n-windows/n8n-config-2.png)

Congratulations! You are now running n8n community edition on your PC.

![n8n - Get paid features](/assets/2026/n8n-windows/n8n-config-3.png)


## Managing the n8n container

Even if you close n8n in your browser, the n8n container keeps running in the background.
You can keep it running or stop it to save resources.

![Running n8n container](/assets/2026/n8n-windows/n8n-manage-1.png)

If you want to restart your n8n instance (e.g. after rebooting Windows), go to *Containers* and click *Start*.
You can then access n8n from [http://localhost:5678](http://localhost:5678).

![Start n8n container](/assets/2026/n8n-windows/n8n-manage-2.png)

## Links

- [Official n8n installation guide with Docker](https://docs.n8n.io/hosting/installation/docker)

## Footnotes
