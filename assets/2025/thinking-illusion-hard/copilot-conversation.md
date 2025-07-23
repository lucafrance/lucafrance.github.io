# Prompt 🧑

Write a python script to generate a solution for a given number of n disks for this puzzle.
There are three pegs and n disks of different sizes stacked on the first peg. The disks are numbered from *1* (smallest) to *n* (largest). Disk moves in this puzzle should follow:
1. Only one disk can be moved at a time.
2. Each move consists of taking the upper disk from one stack and placing it on top of another stack.
3. A larger disk may not be placed on top of a smaller disk.
The goal is to move the entire stack to the third peg. Example: With 3 disks numbered 1 (smallest), 2, and 3 (largest), the initial state is \[\[3, 2, 1\], \[\], \[\]\], and a solution might be:
```
moves = [[1 , 0 , 2] , [2 , 0 , 1] , [1 , 2 , 1] ,
         [3 , 0 , 2] , [1 , 1 , 0] , [2 , 1 , 2] , [1 , 0 , 2]]
```

This means: Move disk 1 from peg 0 to peg 2, then move disk 2 from peg 0 to peg 1, and so on. **Requirements**: 
- When exploring potential solutions in your thinking process, always include the corresponding complete list of moves. 
- The positions are 0-indexed (the leftmost peg is 0). 
- Ensure your final answer includes the complete list of moves in the format:
- `moves = [[disk id, from peg, to peg], ...]`

# Answer 🤖

Here’s a Python script to solve the Tower of Hanoi puzzle for any number of disks, generating the full list of moves as requested:

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

### 🧠 How it works:
- The function uses recursion to move `n-1` disks to the auxiliary peg, move the largest disk to the target peg, and then move the `n-1` disks from the auxiliary peg to the target.
- Each move is recorded as `[disk id, from peg, to peg]` in 0-indexed format.
- You can replace `n = 3` with any other positive integer to get the corresponding sequence.

Would you like me to show the result for another value of `n`, say 4 or 5? The move list grows fast—it’s \(2^n - 1\) moves total!
