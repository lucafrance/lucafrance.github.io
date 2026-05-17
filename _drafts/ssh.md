---
title: SSH basics on Windows
tags: []
mastodon: 
---

This guide shows how to log on a Linux server from a Windows client with SSH.
[Secure Shell (SSH)](https://www.rfc-editor.org/rfc/rfc4251) is a protocol to log on a host remotely.
Is is a practical way to manage one and more servers from a single machine.

## SSH software on Windows

There are several programs that implement SSH.
On Windows, [Putty](https://putty.software) has been a popular for a long time.

{:refdef: style="text-align: center;"}
![](/assets/2026/ssh-windows/putty-mr-robot.png)
*Putty being used in Mr. Robot ([S2E7](https://en.wikipedia.org/wiki/Eps2.5_h4ndshake.sme))*
{: refdef}

Another one is [OpenSSH](https://www.openssh.org/), which is installed by default [since Windows 10 build 1809](https://learn.microsoft.com/en-us/windows-server/administration/OpenSSH/openssh-overview).
The `ssh` command on Windows is an alias for OpenSSH.
Its configuration files are saved in `C:\Users\username\.ssh`.

```
PS C:\Users\username> ssh -V
OpenSSH_for_Windows_9.5p2, LibreSSL 3.8.2
```

## Connecting with SSH for the first time

Your server is identifiable by a hostname, as defined in `/etc/hostame`.
You log on the server by typing `ssh username@server-hostname`.
The first time you log on, you will get a warning that the host is unknown.
After confirming, you enter the password to authenticate.

```
PS C:\Users\username> ssh username_server@server
The authenticity of host 'server (112.248.247.177)' can't be established.
ED25519 key fingerprint is SHA256:roZMHYUkhDul7IK3L+J4M4BtuBjYc5W73sFz/G8U9r8.
This key is not known by any other names.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added 'server' (ED25519) to the list of known hosts.
username_server@server's password:
...
```

The server's hostname and its public key for multiple encryption algorithms have been added to `C:\Users\username\.ssh\known_hosts` file.
This is what is meant by `Warning: Permanently added 'server' (ED25519) to the list of known hosts`.
The next time you connect, that public key will be used to authenticate the server and there will be no more warning.
The authentication prevents a malicious actor from replacing the server without the client noticing.

![](/assets/2026/ssh-windows/known-hosts.png)


## Key-based authentication

Key-based authentication is based on [asymmetric cryptography](https://www.rfc-editor.org/rfc/rfc4949#page-21), which uses a pair of private and public keys.
The private key remains on the client, the public key can be shared with anybody, including the server.

OpenSSH includes the `ssh-keygen` tool, which can be used to generate authentication keys for key-based authentication.
You start by creating the authentication keys with `ssh-keygen -t ed25519`.

OpenSSH supports multiple algorithms to generate the authentication keys.
The argument `-t ed25519` specifies to use the [ed25519 algorithm](https://ed25519.cr.yp.to/), which is [supported since v6.5 (releases in 2014)](https://www.openssh.org/txt/release-6.5) and [the default since v9.5 (released in 2023)](https://www.openssh.org/txt/release-9.5).
Any modern host you connect to should support ed25519.
If not, you may need to specify a different algorithm.

You may choose to protect the keys with a passphrase for additional protection in case the client is compromised.

The fingerprint and the randomart image are hashes of the public key to recognise it more easily.
In general, they can be ignored.

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

The authentication keys are saved to `C:\Users\username\.ssh\id_ed25519` (private key) and `C:\Users\username\.ssh\id_ed25519.pub` (public key).

{:refdef: style="text-align: center;"}
![](/assets/2026/ssh-windows/key-pair.png)
*DO NOT SHARE YOUR PRIVATE KEY. This key pair is just an example, I regenerated the keys before publishing the blog post.*
{:refdef:}


## Sharing the public key for authentication

The private key stays on the client, the public key can be shared with anybody.
You need to share the public key with the server to log on without password.

Use the command:
```
cat $home\.ssh\id_ed25519.pub | ssh username_server@server "mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys"
```

This is what it does:
- `cat C:\Users\<client_username>\.ssh\id_ed25519.pub` reads the public key,
- `ssh username_server@server` logs on the server after entering the password,
- `mkdir -p ~/.ssh` creates a `~/.ssh` directory if missing,
- `cat >> ~/.ssh/authorized_keys` adds the public key to the `~/.ssh/authorized_keys` file.


## Connect to the machine with SSH

You can now log on without password with `ssh username_server@server`.

The server creates a cryptographic challenge with the public key.
The challenge can be solved by the client with the private key.
The solution is then shared back to the server and the client is authenticated.

```
PS C:\Users\username> ssh username_server@server
Linux server 6.12.75+rpt-rpi-v8 #1 SMP PREEMPT Debian 1:6.12.75-1+rpt1 (2026-03-11) aarch64
...
```


A single pair of authentication keys is sufficient per client.
You don't need to create a separate key pair for each host you want to connect to.

If the private key is not saved to the default path, [you need to specify it when connecting](https://man.openbsd.org/ssh#i).

## Links

- [The Secure Shell (SSH) Protocol Architecture (RFC 4251)](https://www.rfc-editor.org/rfc/rfc4251)
- [Putty landing page](https://putty.software)
- [OpenSSH](https://www.openssh.org/)
- [OpenSSH for Windows overview (Microsoft Learn)](https://learn.microsoft.com/en-us/windows-server/administration/OpenSSH/openssh-overview)
- [Key-based authentication in OpenSSH for Windows (Microsoft Learn)](https://learn.microsoft.com/en-us/windows-server/administration/openssh/openssh_keymanagement)
