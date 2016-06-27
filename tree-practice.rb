class TreeNode
   attr_accessor :value, :left, :right

   def initialize(val)
     @value = val
     @left = nil
     @right = nil
   end
end

def print_infix(node)
  return if node == nil  #return if the node is nil
  print_infix(node.left) #go left
  print node.value + " " #print contens of this node
  print_infix(node.right) #go right
end

root = TreeNode.new("+")
root.left = TreeNode.new("3")
root.right = TreeNode.new("2")
print_infix(root)

puts "\n\n"

root2 = TreeNode.new("-")
root2.right = TreeNode.new("10")
root2.left = TreeNode.new("+")
root2.left.left = TreeNode.new("3")
root2.left.right = TreeNode.new("2")
print_infix(root2)

puts "\n\n"

root3 = TreeNode.new("+")
root3.right = TreeNode.new("2")
root3.left = TreeNode.new("*")
root3.left.left = TreeNode.new("4")
root3.left.right = TreeNode.new("3")
print_infix(root3)

puts "\n\n"

root4 = TreeNode.new("-")
root4.right = TreeNode.new("%")
root4.right.right = TreeNode.new("5")
root4.right.left = TreeNode.new("10")
root4.left = TreeNode.new("+")
root4.left.left = TreeNode.new("*")
root4.left.right = TreeNode.new("2")
root4.left.left.left = TreeNode.new("4")
root4.left.left.right = TreeNode.new("3")
print_infix(root4)




#pseduo code:

  #get out of nil
  #go left
  #see if node has a right and left value and if so, print it
  #go right

  #or
  #could print if it is an integer...if woking with integers
  #if its an integer, it wont have any children, only operators will

  def operators(node)  #only want to print nodes that are operators (have children)
    return if node == nil
    operators(node.left)
    if node.left != nil || node.right != nil
      print node.value + " "
    end
    operators(node.right)
  end


  #Write a method that returns the count of non-operators (in this case, leaves) in the tree.
  #only want to print nodes without children
  #same as above, only print the ones whos children ARE nil

  def non_operators(node)
    return if node == nil
    operators(node.left)
    if node.left == nil || node.right == nil
      print node.value + " "
    end
      operators(node.right)
  end


  #Write methods to print the tree in prefix and postfix notations.

  # pre

    #start at top node, print it
    #print node.left
      #if node has no left child node, print the right child node
        #if no right child node, then go back to previous node (but this is the first one so then stop?)
      #if there is a left child node, print it (node.left)
        #if node.left has no left child node, print right child node
        #if no right child node, go bak to main node
    #continue with each child node in the same manner
    # left then right if no left child node
    #then print node.left.right

    #this is assuming that given two child nodes on the right (or more) the path that follows prefix would hit the left more right child node before the right most right child node..i think it does?



  #postfix

    #Start at the top node, print it
      #if node has left child node, move to that node
        #if that node has a left mode child node, move to that node
        #and so on until there are no more left most child nodes
        #print that last left child node
        #then move back to the immediate parent node
          #if that parent node has a right child node print that, then move to the parent node and print it
          #If not, print the parent node
        #then move back to the parents' immediate parent node,
          #if it has a right node, print it
        #continue in this way until you reach the original parent node
      #node to the right child node of the main parent node
      #continue with the same pattern as before to identify all left most chil nodes down to the last one
      #print that one and move back up, printing each right child node then the parent and then moving up
      #or if no right child node, printing the parent immediately and then moving up




#Write a method that returns whether or not a given operator exists in the tree.
  #given n as your operator to find
  #move down through the nodes checking for nil values along the way, and compare the node's value to that of n
  #returning if true





  #TDDs (2) >_<


  # added "fun" => ++ should be instead +(2)
