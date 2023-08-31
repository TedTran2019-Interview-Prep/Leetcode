# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}
def merge_two_lists(list1, list2)
  merged_list = ListNode.new
  dummy_list = merged_list
  until list1.nil? || list2.nil?
    if list1.val < list2.val
      dummy_list.next = list1
      list1 = list1.next
    else
      dummy_list.next = list2
      list2 = list2.next
    end
    dummy_list = dummy_list.next
  end

  dummy_list.next = list1 if list1
  dummy_list.next = list2 if list2

  merged_list.next
end
