---
title: SSH basics on Windows
tags: []
mastodon: 
---

I am building a homelab and got using SSH a lot.
Here is what I learnt.

This guide applies to a Windows client logging in on a Linux server.

## What is SSH

[Secure Shell (SSH)](https://www.rfc-editor.org/rfc/rfc4251) is a protocol to log in on a remotely.
Is is a practical way to manage one and more servers from a client.

## SSH software on Windows

There are several programs that implement SSH.
On Windows, [Putty](https://putty.software) has been a popular for a long time.

TODO screenshot mr robot putty

Another one is [OpenSSH](https://www.openssh.org/), which is installed by default since Windows 10 build 1809.
The rest of this guide refers to OpenSSH.
The `ssh` command in PowerShell is running OpenSSH under the hood.
The configuration files of OpenSSH are saved in `C:\Users\username\.ssh`.

```
PS C:\Users\username> ssh -V
OpenSSH_for_Windows_9.5p2, LibreSSL 3.8.2
```

## Connecting with SSH for the first time

Your server is identifiable by a hostname, as defined in `/etc/hostame`.
You log in on the server by typing `ssh username@server-hostname`.


I get a warning, because I am connecting to `server` for the first time.
I confirm that I want to connect, I then enter the password for `pi` to log in.

```
PS C:\Users\username> ssh username_server@server
The authenticity of host 'server (100.74.178.36)' can't be established.
ED25519 key fingerprint is SHA256:roZMHYUkhDul7IK3L+J4M4BtuBjYc5W73sFz/G8U9r8.
This key is not known by any other names.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added 'server' (ED25519) to the list of known hosts.
username_server@server's password:
Linux server 6.12.75+rpt-rpi-v8 #1 SMP PREEMPT Debian 1:6.12.75-1+rpt1 (2026-03-11) aarch64

The programs included with the Debian GNU/Linux system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.

Debian GNU/Linux comes with ABSOLUTELY NO WARRANTY, to the extent
permitted by applicable law.
Last login: Fri May 15 20:30:52 2026 from 100.112.65.48
```

The `server` hostname and the fingerprint for multiple encryption algorithms are now saved in the `known_hosts` file.
This is what is meant by "Warning: Permanently added 'server' (ED25519) to the list of known hosts.".
The Raspberry Pi will be recognised the next time I connect to it and the authenticity warning wan't be shown again.

If my Raspberry Pi were replaced by another machine called `server`, then OpenSSH would identify the discrepancy and provide another warning.

![](/assets/2026/ssh-windows/known-hosts.png)

## Key based authentication

I used the password of `pi` to authenticate myself on `server`.
This is called password based authentication.
There is also key based authentication, which allows me to log in without entering my password each time.

Key-based authentication is based on [asymmetric cryptography](https://www.rfc-editor.org/rfc/rfc4949#page-21), which uses a pair of private and public keys.
OpenSSH includes the `ssh-keygen` tool, which can be used to generate the authentication keys.

```
ssh-keygen -t ed25519
```



The private key remains on my machine, the public one can be shared with anybody, including the machine I want to connect to.


The private key is stays saved on your machine.
The public key is used by other machines which need to identify your identity, like the one you want to remote into.

You start by creating the private and public keys with `ssh-keygen -t ed25519`.



The argument `-t ed25519` specifies the algorithm that generates the keys.
OpenSSH supports multiple algorithms to generate the authentication keys.
The algorithm *ed25519* is the [supported since v6.5 (releases in 2014)](https://www.openssh.org/txt/release-6.5) and [the default since v9.5 (released in 2023)](https://www.openssh.org/txt/release-9.5).

Any modern machine you connect to should support *ed25519*.
If not, you may need to specify a different algorithm.

You can reuse the same key pair for each machine you want to connect to.
You don't need to create a separate key pair for each host you want to connect to.

You may choose to protect the keys with a passphrase.
This is for additional protection in case your machine is compromised.

```
PS C:\Users\username> ssh-keygen -t ed25519
Generating public/private ed25519 key pair.
Enter file in which to save the key (C:\Users\username/.ssh/id_ed25519):
Enter passphrase (empty for no passphrase):
Enter same passphrase again:
Your identification has been saved in C:\Users\username/.ssh/id_ed25519
Your public key has been saved in C:\Users\username/.ssh/id_ed25519.pub
The key fingerprint is:
SHA256:JTqMR3TqpxSUzUgtMtNkhCPSeTUBmFbqAN+8LybasR4 username@client
The key's randomart image is:
+--[ED25519 256]--+
|.. =oO@B.        |
|o.B+B+=++        |
|.oooo=+.. .      |
| o   * o o       |
|  . o B S        |
|     + +         |
|  E o o          |
| o * .           |
|..+              |
+----[SHA256]-----+
```

The private and public key are saved to the default `$home\.ssh\id_ed25519` and `$home\.ssh\id_ed25519.pub` respectively.

![](/assets/2026/ssh-windows/key-pair.png)

In general, DO NOT SHARE YOUR PRIVATE KEY.
This key pair here is just an example, I regenerated the keys before publishing the blog post.
If you do, anybody can impersonate you over SSH.


The fingerprint and the randomart image are hashes of the public key.
In general you can ignore them.

## Sharing the public key for authentication

The private key stays on your machine, the public can is safe to share with anybody.
You need to share the private key with the machines you want to connect to.

Use the command:
```
cat $home\.ssh\id_ed25519.pub | ssh <server_username>@<server_hostname> "mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys"
```
- `cat C:\Users\<client_username>\.ssh\id_ed25519.pub` reads the public key.
- `ssh <server_username>@<server_hostname>` connects to the server with password authentication.
- `mkdir -p ~/.ssh` creates a `~/.ssh` directory if not existent yet.
- `cat >> ~/.ssh/authorized_keys` adds the public key to the `~/.ssh/authorized_keys` file. The file is created if not existent yet.

The server will create a cryptographic challenge, which can be solved with the private key on the client.
The client sends a solution to the challenge back to the server, which verifies the solution.

## Connect to the machine with SSH

You can now connect without password.

```
PS C:\Users\username> ssh username_server@server
Linux server 6.12.75+rpt-rpi-v8 #1 SMP PREEMPT Debian 1:6.12.75-1+rpt1 (2026-03-11) aarch64

The programs included with the Debian GNU/Linux system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.

Debian GNU/Linux comes with ABSOLUTELY NO WARRANTY, to the extent
permitted by applicable law.
Last login: Fri May 15 22:24:19 2026 from 100.112.65.48
```

If the key is not stored with to the default path, it [must be specified when connecting](https://man.openbsd.org/ssh#i).

## Links

- [OpenSSH](https://www.openssh.org/)
- [Key-based authentication in OpenSSH for Windows (Microsoft Learn)](https://learn.microsoft.com/en-us/windows-server/administration/openssh/openssh_keymanagement)
- [OpenSSH for Windows overview (Microsoft Learn)](https://learn.microsoft.com/en-us/windows-server/administration/OpenSSH/openssh-overview)
- [Putty landing page](https://putty.software)
- [The Secure Shell (SSH) Protocol Architecture (RFC 4251)](https://www.rfc-editor.org/rfc/rfc4251)