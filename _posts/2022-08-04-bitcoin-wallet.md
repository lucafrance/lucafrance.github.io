---
title: The first steps of a bitcoin wallet
tags: [decentralized finance]
---

⚠️ Do additional research if you plan to store a significant amount of bitcoins in your wallet.
In my examples I am ignoring several recommended precautions.

⚠️ If you are interested in bitcoins as an investment, don't.
The only judicious investment for small savers are [exchange traded funds (ETFs)](https://en.wikipedia.org/wiki/Exchange-traded_fund), research those instead.  
   

## Getting on the bitcoin network

In traditional finance you have an account by a bank.
You connect to the bank's server to see your balance.
Transactions are ordered to the bank, which performs them on your behalf.

Bitcoins don't rely on servers.
There is a peer-to-peer (P2P) network of computers (*nodes*) talking to each other.
The nodes share the *blockchain*: a record of every transaction in bitcoin's history.
New transactions are communicated over the P2P network and stored in new *blocks* of the blockchain.

![](/assets/2022/bitcoin-wallet/de-centralized-finance.png)

You can connect to the bitcoin network with [*bitcoin core*](https://bitcoincore.org/)[^1].
Bitcoin Core connects to some nodes on the bitcoin P2P network.
By running it, your machine also becomes one of the nodes.
You can see the nodes you are connected to on the *node window*.

⚠️ Connecting to the network exposes your IP address.
If you care about anonymity, you should take additional precautions[^2].

![](/assets/2022/bitcoin-wallet/node-window.png)

The first time you open Bitcoin Core, it downloads a full copy of the blockchain.[^3]
Once the download is complete, your copy of the blockchain is also shared.
Your machines and the other nodes keep then each other's copy of the blockchain up to date.

![](/assets/2022/bitcoin-wallet/download-blockchain.png)


A wallet is a tool that stores your cryptographic keys.
There are three of wallets:
1. **Software** A program that stores the credentials on your machine.
2. **Hardware** A physical device to connect to your machine for every transaction.
3. **Offline** Any form of non-electronic medium with your keys, e.g. a paper sheet.

There are also online services that let you create an account and store the credentials for you.
Doing so is more convenient, but then you don't control your keys and need to trust the service.



## Links
- [Bitcoin Core](https://bitcoincore.org/)


## Footnotes

[^1]: "[Bitcoin Core] is a direct descendant of the original Bitcoin software client released by Satoshi Nakamoto after he published the famous Bitcoin whitepaper." [About Bitcoin Core](https://bitcoincore.org/en/about/)

[^2]: Bitcoin Core supports the [The Onion Router (Tor)](https://en.bitcoin.it/wiki/Tor). It can help protect your anonymity, but [is not 100% safe](https://www.youtube.com/watch?v=r1z5y8mMi6M).

[^3]: At the time of writing the blockchain is about 400 GB big.
