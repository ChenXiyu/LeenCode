# url: https://leetcode.com/problems/flatten-binary-tree-to-linked-list/description/
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Void} Do not return anything, modify root in-place instead.

@prev = nil

def flatten(root)
  if root == nil
    return
  end
  flatten(root.right)
  flatten(root.left)
  root.right = @prev
  root.left = nil
  @prev = root
end
