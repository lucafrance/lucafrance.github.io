---
title: Setting up your first bitcoin wallet from scratch
tags: [decentralized finance]
---

This guide is meant as an intellectual exercise.
I am not following all necessary precautions for (il)legitimate uses for bitcoin.
   

A wallet is a tool that stores your cryptographic keys.
There are three of wallets:
1. **Software** A program that stores the credentials on your machine.
2. **Hardware** A physical device to connect to your machine for every transaction.
3. **Offline** Any form of non-electronic medium with your keys, e.g. a paper sheet.

There are also online services that let you create an account and store the credentials for you.
Doing so is more convenient, but then you don't control your keys and need to trust the service.

... use bitcoin core for wallet ... 

Bitcoin Core is the descendant of the original bitcoin implementation implementation by Satoshi Nakamoto[^1]. 
It works both as a software wallet, as well as a *node*.
A *node* is a machine connected to the bitcoin network.

In traditional finance you connect to a central server, e.g. your bank to access your financial information and run transactions.
With bitcoin there is no central server, there are several nodes with a full copy of the blockchain. 
Bitcoin core takes care of connecting to some of the nodes on the network to update the local copy of th e blockchain.
Other nodes are just other people running bitcoin core or similar software on their machine.
Other nodes can also connect to your machine and download a copy of the blockchain.
Even if some of the nodes go down, the information is always available as every node has it.
It works similarly to a peer-to-peer service.
You can see too which nodes you are currently connected over *Window* > *Information* > *Peers*. 


The first time you launch bitcoin core it downloads the whole blockchain of all transaction since bitcoin's inception in 2009.
At the time of writing it is about 340 GB.
Once the whole blockchain has been downloaded 



## Links
[Bitcoin Core](https://bitcoincore.org/)


## Footnotes
[^1]: [About Bitcoin Core](https://bitcoincore.org/en/about/)
