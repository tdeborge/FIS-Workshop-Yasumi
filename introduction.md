# Yasumi Introduction

![](/assets/wood-yasumi.png)

## Help on the Internet

When looking at the initial challenge, I found a nice web-page created by [Jan Sipke van der Veen](https://jansipke.nl/yasumi-puzzle/) that provided a lot of feedback on the Puzzle and its challenges. He also provided me with the C code that solved the puzzle \(back in the days of the good old PentiumIII computers\) and I took it upon me to try and rebuild the solution in Java \(as my C knowledge was at a bare minimum\).

## The Puzzle

The Yasumi Puzzle \(or pentomino\) is a game in which different kinds of blocks have to be placed on a grid. Each block is made up of 5 cells each and there are 12 blocks in total. This is exactly the number of unique blocks that can be made up of 5 cells. In the original game these blocks have to be placed on a grid of 6 by 10. Blocks may be rotated if necessary.

The picture below shows you all the possible blocks of the puzzle:

![](/assets/yasumiBlocks.png)

The picture below shows you one of the solutions:

![](/assets/yasumiSolution.png)

## Complexity

The following is taken from Jan Sipke's webpage:

> I wanted to have all solutions to this game and wrote a computer program to find them. Using brute force alone would not have gotten me very far, because the problem is very complex.
>
> For example, each block \(except the red one\) can be rotated. The red block cannot be rotated, so there is only one way to place it. The green block can be rotated once, so there are two ways to place it. Five other blocks can be rotated twice, so there are four ways to place them. The last five blocks can be rotated three times, so there are eight ways to place them. Therefore, counting rotations only, there are $$1^1*2^1*4^5* 8^5 = 
> 67,108,864 $$$$1^1 * 2^1 * 4^5 * 8^5$$ ways to place the blocks or 67108864 possible block placements.



