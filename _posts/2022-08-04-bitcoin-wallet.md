---
title: The first steps of a bitcoin wallet
tags: [decentralized finance]
---

⚠️ Do additional research if you plan to store a significant amount of bitcoins in your wallet.
In my examples I am ignoring several recommended precautions.

⚠️ If you are interested in bitcoins as an investment, don't.
The only judicious investment for small savers are [exchange-traded funds (ETFs)](https://en.wikipedia.org/wiki/Exchange-traded_fund), research those instead.

⚠️ As a rule of thumb: if someone requested you a bitcoin-related payment, it is a scam.
Be careful and check [bitcoin's page about scams](https://bitcoin.org/en/scams) before regretting it.   


## Getting on the bitcoin network

In traditional finance you have an account by a bank.
You connect to the bank's server to see your balance.
Transactions are ordered to the bank, which performs them on your behalf.

Bitcoins don't rely on servers.
There is a peer-to-peer (P2P) network of computers (*nodes*) talking to each other.
The nodes share the *blockchain*: a record of every transaction in bitcoin's history.
New transactions are communicated over the P2P network and stored in new *blocks* of the blockchain.

![](/assets/2022/bitcoin-wallet/de-centralized-finance.png)

You can connect to the bitcoin network with [*Bitcoin Core*](https://bitcoincore.org/)[^1].
Bitcoin Core connects to some nodes on the bitcoin P2P network.
By running it, your machine also becomes one of the nodes.
You can see the nodes you are connected to on the *node window*.

⚠️ Connecting to the bitcoin network exposes your IP address.
If you care about anonymity, you should take additional precautions[^2].

![](/assets/2022/bitcoin-wallet/node-window.png)

The first time you open Bitcoin Core, it downloads a full copy of the blockchain.[^3]
Once the download is complete, your copy of the blockchain is also shared.
Your machine and the other nodes keep then each other's copy of the blockchain up to date.

![](/assets/2022/bitcoin-wallet/download-blockchain.png)


## Creating the wallet

Bitcoins are stored in *wallets*.
Wallets consists of a *private key* and a *public key*.
The *public key* identifies your wallet on the network and is necessary to receive funds[^4].
The *private key* is necessary to *sign* transactions from your wallet to other wallets.
Bitcoin Core can create wallets and store the keys on your machine[^5] [^6].
The keys of the wallet are stored in a *wallet.dat* file, which can (and should) be backed up.

⚠️ If you lose your private key, you won't be able to transfer funds from your wallet.
If your private key is leaked, your wallet will be emptied.
Unlike traditional finance, bitcoins don't allow to reverse transactions.
Losing exclusive access to your bitcoin wallet is irreversible.

![](/assets/2022/bitcoin-wallet/bitcoin-core-create-wallet.png)

The new wallet does not exists on the blockchain yet, only as the locally saved keys.
Once there is at least one transaction to your wallet, it will be visible to the bitcoin network.

![](/assets/2022/bitcoin-wallet/empty-wallet.png)


## Getting the first bitcoins on the wallet
...


## Paying with bitcoins
...


## Links

- [Bitcoin.org](https://bitcoin.org/en/)
- [Bitcoin Core](https://bitcoincore.org/)
- [Bitcoin Wiki](https://en.bitcoin.it/wiki/Main_Page)


## Footnotes

[^1]: "[Bitcoin Core] is a direct descendant of the original Bitcoin software client released by Satoshi Nakamoto after he published the famous Bitcoin whitepaper." [About Bitcoin Core](https://bitcoincore.org/en/about/)

[^2]: Bitcoin Core supports the [The Onion Router (Tor)](https://en.bitcoin.it/wiki/Tor). It can help protect your anonymity, but [is not 100% safe](https://www.youtube.com/watch?v=r1z5y8mMi6M).

[^3]: At the time of writing the blockchain is about 400 GB big.

[^4]: It is also possible to receive funds through an [address](https://en.bitcoin.it/wiki/Invoice_address), which is based on the public key and provides additional security.

[^5]: This is called a *software wallet*. You can use instead a *hardware wallet* or an *offline wallet*. Each kind of wallet is not perfect and has different pros and cons.

[^6]: There are services which save the keys on your behalf and provide a risk trade-off. You basically exchange the risk of you screwing up with the risk of the service provider screwing up.
