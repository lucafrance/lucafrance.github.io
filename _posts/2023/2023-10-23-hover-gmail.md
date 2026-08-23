---
title: How to fix Gmail blocking email from Hover
tags: []
mastodon: https://mastodon.social/@lucafeu/115989156529304961
---

I use [Hover](https://www.hover.com/) for [my domain registration and email](https://lucaf.eu/contact).
I couldn't send emails to Gmail addresses, as they were all bouncing back. 

```
<john.doe@gmail.com>: host gmail-smtp-in.l.google.com[***.***.***.**] said:
    550-5.7.26 This mail has been blocked because the sender is
    unauthenticated. 550-5.7.26 Gmail requires all senders to authenticate with
    either SPF or DKIM. 550-5.7.26  550-5.7.26  Authentication results:
    550-5.7.26  DKIM = did not pass 550-5.7.26  SPF [lucaf.eu] with ip:
    [***.***.***.**] = did not pass 550-5.7.26  550-5.7.26  To mitigate this
    issue, please visit Gmail's authentication guide 550-5.7.26 for
    instructions on setting up authentication: 550 5.7.26
    https://support.google.com/mail/answer/81126#authentication
    k33-**************************.*** - gsmtp (in reply to
    end of DATA command)
```

The error 5.7.26 is caused by [Gmail's Sender Policy Framework (SPF) requirement](https://support.google.com/mail/answer/81126#authentication), which is not created by default for Hover's email service.
To fix the error, follow [this guide](https://help.hover.com/hc/en-us/articles/115006406047-Creating-an-SPF-record) and create a SPF record for your domain.

![](/assets/2023/hover-gmail/spf-record.png)

The record suggested in Hover's guide fixed the issue for me.
```
v=spf1 include:_spf.hostedemail.com include:hover.com ~all
```
