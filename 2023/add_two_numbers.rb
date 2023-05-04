# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  sum = 0
  mult = 0
  while (l1 && l2)
    sum += (l1.val + l2.val) * (10 ** mult)
    mult += 1
    l1 = l1.next
    l2 = l2.next
  end

  while l1
    sum += l1.val * (10 ** mult)
    mult += 1
    l1 = l1.next
  end

  while l2
    sum += l2.val * (10 ** mult)
    mult += 1
    l2 = l2.next
  end

  sum.to_s.split('').reverse.map { |nbr| nbr.to_i }
end

def add_two_numbers(l1, l2)
  sum = []
  carry = 0
  while (l1 && l2)
    added = (l1.val + l2.val + carry)
    carry = added / 10
    sum << added % 10
    l1 = l1.next
    l2 = l2.next
  end

  while l1
    added = (l1.val + carry)
    carry = added / 10
    sum << added % 10
    l1 = l1.next
  end

  while l2
    added = (l2.val + carry)
    carry = added / 10
    sum << added % 10
    l2 = l2.next
  end

  sum << carry unless carry.zero?
  sum
end

def add_two_numbers(l1, l2)
  sum = []
  carry = 0
  while (l1 || l2 || !carry.zero?)
    val1 = l1 ? l1.val : 0
    val2 = l2 ? l2.val : 0
    added = (val1 + val2 + carry)
    carry = added / 10
    sum << added % 10
    l1 = l1.next if l1
    l2 = l2.next if l2
  end

  sum
end
