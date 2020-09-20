data Tree = Leaf Int
            | Node Int Tree Tree
            deriving (Show)
            
leaf = Leaf 1
tree3 = Node 2 (Leaf 1) (Leaf 3)
tree7 = Node 4 (Node 2 (Leaf 1) (Leaf 3)) (Node 6 (Leaf 5) (Leaf 7))
leftSkew = Node 4 (Node 3 (Node 2 (Leaf 1) (Leaf 0)) (Leaf 0)) (Leaf 0)

depth (Leaf _) = 0
depth (Node _ left right) = 1+ max (depth left) (depth right)

preOrder (Leaf value) = [value]
preOrder (Node value left right) = [value] ++ (preOrder left) ++ (preOrder right)

inOrder (Leaf value) = [value]
inOrder (Node value left right) = (inOrder left) ++ [value] ++ (inOrder right)

postOrder (Leaf value) = [value]
postOrder (Node value left right) = (postOrder left) ++ (postOrder right) ++ [value]