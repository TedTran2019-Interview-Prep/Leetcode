# frozen_string_literal: true

# class MyCircularQueue
#     def initialize(k)
#       @size = k
#       @queue = []
#     end
#
#     def en_queue(value)
#       return false if @queue.size == @size
#
#       @queue << value
#       true
#     end
#
#     def de_queue()
#       return false if @queue.empty?
#
#       @queue.shift
#       true
#     end
#
#     def front()
#       return -1 if @queue.empty?
#
#       @queue.first
#     end
#
#     def rear()
#       return -1 if @queue.empty?
#
#       @queue.last
#     end
#
#     def is_empty()
#       @queue.empty?
#     end
#
#     def is_full()
#       @queue.size == @size
#     end
# end

class MyCircularQueue
  def initialize(k)
    @size = k
    @queue = LinkedList.new
  end

  def en_queue(value)
    return false if @queue.size == @size

    @queue.push(value)
    true
  end

  def de_queue
    return false if @queue.empty?

    @queue.shift
    true
  end

  def front
    return -1 if @queue.empty?

    @queue.first
  end

  def rear
    return -1 if @queue.empty?

    @queue.last
  end

  def is_empty
    @queue.empty?
  end

  def is_full
    @queue.size == @size
  end
end

class Node
  attr_accessor :nbr, :next, :prev

  def initialize(nbr = nil)
    @nbr = nbr
    @next = nil
    @prev = nil
  end
end

class LinkedList
  attr_reader :size

  def initialize
    @head = Node.new
    @tail = Node.new
    @head.next = @tail
    @tail.prev = @head
    @size = 0
  end

  def first
    @head.next == @tail ? nil : @head.next.nbr
  end

  def last
    @tail.prev == @head ? nil : @tail.prev.nbr
  end

  def push(val)
    @size += 1
    node = Node.new(val)
    prev_node = @tail.prev
    prev_node.next = node
    @tail.prev = node
    node.next = @tail
    node.prev = prev_node
    node
  end

  def shift
    @size -= 1
    shifted = @head.next
    @head.next = @head.next.next
    @head.next.prev = @head
    shifted.nbr
  end

  def empty?
    @head.next.next.nil?
  end
end
