# Binary Trees in Haskell
Tree data structure, and tree depth function taken from [futurelearn](https://www.futurelearn.com/your-courses)

A tree can be empty, or it can be a node with a left and right subtree as its children

## Traversals
An array is returned containing the traversal order
* In order
* Pre order
* Post order

## Functions
* `Insert tree toInsert` Insert `toInsert` as a leaf into the binary search tree `tree`
* `createBST xs` Create a binary search tree whose keys are the values of array `xs`
* `createBST' tree xs` Create a binary search tree given an existing tree `tree` and insert the values of array `xs` as its key
* `rotateLeft tree` rotate the tree `tree` to the left along the root node
* `rotateRight tree` rotate the tree `tree` to the right along the root node
* `minimumBST tree` return the minimum element in the tree `tree`
* `maximumBST tree` return the maximum element in the tree `tree`

## Specs
* GHC 8.6.5