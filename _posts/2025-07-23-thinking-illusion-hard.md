---
title: Thinking is an illusion; and hard 🧠
tags: [AI]
---

TL,DR: AI is smart in many ways and dumb in others (for now).

Large Language Models (LLMs) are a useful tool to code. Take this Python script by [Copilot](https://copilot.microsoft.com/)[^copilot-conversation] that generates the optimal solution to the [Tower of Hanoi](https://en.wikipedia.org/wiki/Tower_of_Hanoi).

```python
def hanoi(n, source, target, auxiliary, moves):
    if n == 1:
        moves.append([1, source, target])
    else:
        hanoi(n-1, source, auxiliary, target, moves)
        moves.append([n, source, target])
        hanoi(n-1, auxiliary, target, source, moves)

def generate_hanoi_moves(n):
    moves = []
    hanoi(n, 0, 2, 1, moves)
    return moves

# Example usage:
n = 3  # Change this number to generate a solution for more disks
moves = generate_hanoi_moves(n)
print("moves =", moves)
```

[^copilot-conversation]: [Full conversation](/assets/2025/thinking-illusion-hard/copilot-conversation.md).

A recent study by Apple[^study-by-apple] explored how Large Reasoning Models (LRMs) perform on the Tower of Hanoi and other puzzles.
Instead of generating code like I did[^changed-one-line], the researchers asked the model to output the solution directly for varying numbers of disks.

[^study-by-apple]: [Apple.com - *The Illusion of Thinking: Understanding the Strengths and Limitations of Reasoning Models via the Lens of Problem Complexity* (June 2025)](https://machinelearning.apple.com/research/illusion-of-thinking)

[^changed-one-line]: To generate the code above, I used the [system prompt from the paper](/assets/2025/thinking-illusion-hard/apple-system-prompt.md). I just replaced the first line with: "Write a python script to generate a solution for a given number of *n* disks for this puzzle.".

Their main discovery is that the accuracy of the answer collapses to zero after 10 disks (corresponding to 1023 optimal moves).
The results are similar for the other puzzles as complexity increases.


{:refdef: style="text-align: center;"}
| ![](/assets/2025/thinking-illusion-hard/the-illusion-of-thinking-Im1(2).png){:width="30%"} | 
{: refdef}

*A chart from the study: accuracy vs number of disks. Each line corresponds to a different model.*

This is interesting to me:
- The LRM can implement an algorithm that solves the puzzle perfectly for any level of complexity.
- The LRM can't execute the solution beyond a certain threshold.

By consuming much more compute than simply running a script, the LRM behaves like an average human.
It is capable of understanding and even coding a recursive solution, but unwilling (or unable) to manually carry it out for over a thousand steps.[^sean-comment].

[^sean-comment]: Sean Goedecke argues that [the LRM decides to ignore the manual steps once it notices how many they are](https://www.seangoedecke.com/illusion-of-thinking/). This is what I would expect from a smart human; if asked to perform a long stupid task, they would look for alternative approaches.

There is potential for improvement as AI agents get better integrated with other tools.
Imagine an AI-assistant that:
- evaluates the cost of its own computation,
- recognizes there is a known optimal algorithm,
- spends some compute to optimize its own implementation,
- executes it on the most efficient hardware possible.

I remain curious about how relevant these kind of limitations might be in the future.

## Footnotes
