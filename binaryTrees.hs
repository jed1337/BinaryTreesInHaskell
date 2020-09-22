data Tree a = Empty
     | Node a (Tree a) (Tree a)
     deriving (Eq, Ord, Show)
            
leaf a = Node a Empty Empty
            
-- variables
tree3 = Node 2 (leaf 1) (leaf 3)
tree7 = Node 4 (Node 2 (leaf 1) (leaf 3)) (Node 6 (leaf 5) (leaf 7))
leftSkew' = Node 3 (Node 2 (leaf 1) Empty) Empty	
leftSkew = Node 4 (Node 3 (Node 2 (leaf 1) Empty) Empty) Empty

-- methods
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

createBST [] = Empty
createBST (x:xs) = createBST2 (Node x Empty Empty) xs
	where
		createBST2 tree [] = tree
		createBST2 tree (x:xs) = createBST2 (insert tree x) xs

createBST' tree [] = tree
createBST' tree (x:xs) = createBST' (insert tree x) xs

--1           2 
--  2   ->   1 3
--    3         
rotateLeft Empty = Empty
rotateLeft (Node value left (Node rightValue rightLeft rightRight)) =
	(Node rightValue (Node value left rightLeft) rightRight)
	
--    3       2 
--  2   ->   1 3
--1             
rotateRight Empty = Empty
rotateRight (Node value (Node leftValue leftLeft leftRight) right) =
	(Node leftValue leftLeft (Node value leftRight right))
	
searchBST Empty search = False
searchBST (Node value left right) search 
	| search == value = True
	| search < value = searchBST left search
	| search > value = searchBST right search
	
minimumBST Empty = error "No minimum value on an Empty tree"
minimumBST (Node value Empty _) = value
minimumBST (Node value left _) = minimumBST left

maximumBST Empty = error "No maximum value on an Empty tree"
maximumBST (Node value _ Empty) = value
maximumBST (Node value _ right) = maximumBST right