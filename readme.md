# Binary Trees in Haskell
Tree data structure, and tree depth function taken from [futurelearn](https://www.futurelearn.com/your-courses)

A tree can be empty, or it can be a node with a left and right subtree as its children

## Traversals
An array is returned containing the traversal order
* In order
* Pre order
* Post order

## Additional functions
* `Insert tree toInsert` Insert `toInsert` as a leaf into the binary seasrch tree `tree`
* `createBST xs` Create a binary search tree whose keys are the values of array `xs`
* `createBST' tree xs` Create a binary search tree given an existing tree `tree` and insert the values of array `xs` as its key

## Specs
* GHC 8.6.5