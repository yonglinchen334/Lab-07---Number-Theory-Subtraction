# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names

## Summary
In lab this week, we performed subtraction using ones and twos compliment. In order to do so, we utilized the Full Adder logic that was written in our last lab. Using one's compliment, we used a total of 8 Full Adders to add/subtract 4-bit numbers and the other 4 Full Adders to handle the carry (overflow) by bringing it back around and adding it back in. In the twos_compliment file, it was just a simple twos compliment converter for a 8-bit number. We started off by first getting the compliment of our 8-bit number and then used 8 Full Adders to add a 1. After getting started on the lab and reading through all the material, it wasn't too difficult to implement. We just ended up with a bug where the twos compliment file was passing in blanks and was not being initialized properly. 
## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.

A Half adder adds two 1-bit inputs and a half subtractor subtracts them. They are somewhat similar becuase the main output bit follows the same pattern, but the second output is different. The half adder gives a carry and the subtractor gives a borrow.

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?

The end around carry makes things harder because a carry_out has to be sent back and added to the first bit, which means extra steps and it also slows the system down and messes with the implementation.

### 3 - What is the edge case and problem with Two’s Complement number representation?

The negative range has 1 extra value, so in 4 bit systems the numbers go from 7 to -8. That means the most negative number has no positive match and this can cause overflow.
