---
title: Make your chatbot use simple language
tags: []
mastodon: 
---

I use LLMs a lot at work to rewrite my drafts fluidly or generate bullet point summaries.
By default, I find the language used by LLMs to be overly complex.
If I am writing in English, most of my audience is usually not a native speaker.
If I am writing in German (not my native language), I prefer sentences that I would actually use myself.

My solution is to specify the language level in the prompts according to the [Common European Framework of Reference for Languages (CEFR)](https://www.coe.int/en/web/common-european-framework-reference-languages/level-descriptions).
I find level B2 to be an ideal compromise; it is expressive without sounding simplistic.

Here is for example how the [Gettysburg address](https://en.wikisource.org/wiki/Gettysburg_Address_(Bliss_copy)) is summarised with and without specifying the language level[^model-choice][^norvig].

[^model-choice]: I used [GPT-5.4 mini](https://developers.openai.com/api/docs/guides/latest-model?model=gpt-5.4) on [duck.ai](https://duck.ai). The model choice is arbitrary.

[^norvig]: This is a reference to the satirical [Gettysburg Powerpoint Presentation](https://www.norvig.com/Gettysburg/) by [Peter Norvig](https://www.norvig.com/). I learnt about it in [Edward Tufte](https://www.edwardtufte.com)'s [The Cognitive Style of Powerpoint](https://www.edwardtufte.com/book/the-cognitive-style-of-powerpoint-pitching-out-corrupts-within-ebook/).

```
Prompt: Summarise this speech in 5 bullet points.
<copy of the speech>

Output:
- The speech recalls America’s founding ideals: liberty and equality.
- It frames the Civil War as a test of whether the nation can survive.
- Lincoln says the battlefield is already sanctified by the soldiers’ sacrifice.
- He argues the living should honor the dead by continuing their unfinished work.
- He ends with a call for a “new birth of freedom” and a government “of the people, by the people, for the people” to endure.
```

```
Prompt: Summarise this speech in 5 bullet points. Use language level B2.
<copy of the speech>

Output:
- Lincoln says the United States was founded on liberty and equality for all people.  
- He explains that the Civil War is testing whether this nation can survive.  
- The cemetery is being dedicated to the soldiers who died in the battle.  
- He says the soldiers’ sacrifice has already made the ground sacred, more than any speech can do.  
- He urges the living to continue the unfinished work, honor the dead, and protect freedom and democratic government.
```

You can go further with this approach and use the lowest language level.

```
Prompt: Summarise this speech in 5 bullet points. Use basic English.
<copy of the speech>

Output:
- A new nation was made a long time ago.
- The country is in a big civil war.
- They made this place a cemetery for the dead soldiers.
- The soldiers made this place special by their brave work.
- The living should keep working for freedom and for a better country.
```

## Original speech

> Address delivered at the dedication of the cemetery at Gettysburg.
>
> Four score and seven years ago our fathers brought forth, on this continent, a new nation, conceived in Liberty, and dedicated to the proposition that all men are created equal.
> 
> Now we are engaged in a great civil war, testing whether that nation, or any nation so conceived and so dedicated, can long endure. We are met on a great battle-field of that war. We have come to dedicate a portion of that field, as a final resting place for those who here gave their lives that that nation might live. It is altogether fitting and proper that we should do this.
> 
> But, in a larger sense, we can not dedicate—we can not consecrate—we can not hallow—this ground. The brave men, living and dead, who struggled here, have consecrated it, far above our poor power to add or detract. The world will little note, nor long remember what we say here, but it can never forget what they did here. It is for us the living, rather, to be dedicated here to the unfinished work which they who fought here have thus far so nobly advanced. It is rather for us to be here dedicated to the great task remaining before us—that from these honored dead we take increased devotion to that cause for which they gave the last full measure of devotion—that we here highly resolve that these dead shall not have died in vain—that this nation, under God, shall have a new birth of freedom—and that government of the people, by the people, for the people, shall not perish from the earth.
> 
> Abraham Lincoln
> November 19, 1863.

## Footnotes
