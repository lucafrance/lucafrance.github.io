---
title: Make your chatbot use simple language
tags: []
mastodon: 
---

I use LLMs a lot at work to rewrite my texts fluidly or generate bullet point summaries.
By default, I find that LLMs tend to use too complex language and sentences structure.
If I am writing in English, most of my audience is usually not a native speaker and might not be familiar with the language.
If I am writing in German, that is not my native language, and I prefer to get a language I would actually use myself.
I find the language level B2 as defined in the [Common European Framework of Reference for Languages (CEFR)](https://www.coe.int/en/web/common-european-framework-reference-languages/level-descriptions) to be an ideal compromise; it is expressive without sounding simplistic.

Here is for example how the [Gettysburg address](https://en.wikisource.org/wiki/Gettysburg_Address_(Bliss_copy)) is summarised with [GPT-6 Luna](https://openai.com/index/introducing-gpt-6-sol-and-luna/).

```
Prompt: Summarise this speech in 5 bullet points.

Address delivered at the dedication of the cemetery at Gettysburg.

Four score and seven years ago our fathers brought forth, on this continent, a new nation, conceived in Liberty, and dedicated to the proposition that all men are created equal.

Now we are engaged in a great civil war, testing whether that nation, or any nation so conceived and so dedicated, can long endure. We are met on a great battle-field of that war. We have come to dedicate a portion of that field, as a final resting place for those who here gave their lives that that nation might live. It is altogether fitting and proper that we should do this.

But, in a larger sense, we can not dedicate—we can not consecrate—we can not hallow—this ground. The brave men, living and dead, who struggled here, have consecrated it, far above our poor power to add or detract. The world will little note, nor long remember what we say here, but it can never forget what they did here. It is for us the living, rather, to be dedicated here to the unfinished work which they who fought here have thus far so nobly advanced. It is rather for us to be here dedicated to the great task remaining before us—that from these honored dead we take increased devotion to that cause for which they gave the last full measure of devotion—that we here highly resolve that these dead shall not have died in vain—that this nation, under God, shall have a new birth of freedom—and that government of the people, by the people, for the people, shall not perish from the earth.

Abraham Lincoln
November 19, 1863.
```

```
- The United States was founded on liberty and the principle that all people are created equal.
- The Civil War is testing whether a nation built on those ideals can endure.
- The fallen soldiers have made the battlefield sacred through their sacrifice.
- The living must continue the unfinished work and honor the dead by serving the cause for which they died.
- Lincoln calls for a renewed commitment to freedom and to preserving government “of the people, by the people, for the people.”
```

```
Prompt: Summarise this speech in 5 bullet points. Use language level B2.

[...]
```

```
- The United States was founded on liberty and the belief that all people are equal.
- The Civil War is testing whether a nation built on these ideas can survive.
- The soldiers who died at Gettysburg gave their lives to help the nation live.
- The living must continue the work the soldiers began and make sure their sacrifice was not for nothing.
- Lincoln calls for a renewed commitment to freedom and to a government that serves the people.
```

You can go one step further and use [basic English](https://en.wikipedia.org/w/index.php?title=Basic_English&oldid=1368058931).

```
Prompt: Summarise this speech in 5 bullet points. Use basic English.

[...]
```

```
- The United States was founded on freedom and the belief that all people are equal.
- The Civil War is testing whether a nation built on these ideas can survive.
- The cemetery honors the soldiers who died at Gettysburg.
- Their actions matter more than the words spoken at the ceremony.
- The living must continue their work so freedom grows and people’s government survives.
```

{:refdef: style="text-align: center;"}
![Actually, I think if all higher math professors had to write for the Simple English Wikipedia for a year, we'd be in much better shape academically.](/assets/2026/b2-llm/simple.png)<br>
*Simple ([xkcd 547](https://xkcd.com/547/)), © Randall Munroe, [CC BY NC 2.5](https://creativecommons.org/licenses/by-nc/2.5/).*
{: refdef}
