data Tree a = Empty
     | Node a (Tree a) (Tree a)
     deriving (Eq, Ord, Show)
            
leaf a = Node a Empty Empty
            
tree3 = Node 2 (leaf 1) (leaf 3)
tree7 = Node 4 (Node 2 (leaf 1) (leaf 3)) (Node 6 (leaf 5) (leaf 7))
leftSkew = Node 4 (Node 3 (Node 2 (leaf 1) Empty) Empty) Empty

depth (Empty) = 0
depth (Node _ left right) = 1+ max (depth left) (depth right)

preOrder (Empty) = []
preOrder (Node value left right) = [value] ++ (preOrder left) ++ (preOrder right)

inOrder (Empty) = []
inOrder (Node value left right) = (inOrder left) ++ [value] ++ (inOrder right)

postOrder (Empty) = []
postOrder (Node value left right) = (postOrder left) ++ (postOrder right) ++ [value]

insert (Empty) toInsert = Node toInsert Empty Empty
insert (Node value left right) toInsert = 
	if (toInsert<=value) 
		then (Node value (insert left toInsert) right) 
	else (Node value left (insert right toInsert))
