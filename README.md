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

## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.

A Half adder adds two 1-bit inputs and a half subtractor subtracts them. They are somewhat similar becuase the main output bit follows the same pattern, but the second output is different. The half adder gives a carry and the subtractor gives a borrow.

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?

The end around carry makes things harder because a carry_out has to be sent back and added to the first bit, which means extra steps and it also slows the system down and messes with the implementation.

### 3 - What is the edge case and problem with Two’s Complement number representation?

The negative range has 1 extra value, so in 4 bit systems the numbers go from 7 to -8. That means the most negative number has no positive match and this can cause overflow.
