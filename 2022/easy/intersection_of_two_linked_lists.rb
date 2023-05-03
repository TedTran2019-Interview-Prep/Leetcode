# frozen_string_literal: true

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} headA
# @param {ListNode} headB
# @return {ListNode}
def getIntersectionNode(list1, list2)
  dict = {}
  until list1.nil?
    dict[list1.object_id] = 1
    list1 = list1.next
  end
  until list2.nil?
    return list2 if dict[list2.object_id] == 1

    list2 = list2.next
  end
  nil
end
