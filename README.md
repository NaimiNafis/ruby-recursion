# Ruby Recursion Overview

This section is from The Odin Project, focusing on recursion in Ruby. It starts with an introductory exercise on generating a Fibonacci sequence through both iterative and recursive methods. The core task is to implement the merge sort algorithm in Ruby.

## Fibonacci Sequence Exercise

The initial exercise is designed to get comfortable with recursion. The `fibs(n)` function generates a Fibonacci sequence using an iterative approach, while `fibs_rec(n)` achieves the same result but through recursion.

## Understanding Merge Sort

Merge sort operates on the following principles:

1. Split the unsorted array into n individual elements (we set that a single element is by default sorted). This is done with def merge_sort.
2. Continuously merge these elements into larger, sorted lists until only one sorted list remains, completing the sort. This is done with def merge.
