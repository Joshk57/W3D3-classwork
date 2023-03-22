# def range(first, last)
#     return [] if last < first
#     return nil if first == last
#     return [first] if first == last - 1

#     prev_range = range(first, last-1)
    
#     prev_range.push(last-1)
# end

# # p range(1, 1) 
# p range(1, 2) # [1]
# p range(1, 3) # [1, 2]
# p range(1, 4) # [1, 2, 3]
# p range(1, 5) # [1, 2, 3, 4]
# p range(2, 5) # [2, 3, 4]
# p range(2, 6) # [2, 3, 4, 5]
# p range(5, 15)

# def iter_range(first, last)
#     new_arr = []
#     (first...last).each do |num|
#         new_arr << num
#     end

#     new_arr
# end

# p iter_range(1, 2) # [1]
# p iter_range(1, 3) # [1, 2]
# p iter_range(1, 4) # [1, 2, 3]
# p iter_range(1, 5) # [1, 2, 3, 4]
# p iter_range(2, 5) # [2, 3, 4]
# p iter_range(2, 6) # [2, 3, 4, 5]


# recursion 1
# exp(b, 0) = 1
# exp(b, n) = b * exp(b, n - 1)

# # recursion 2
# exp(b, 0) = 1
# exp(b, 1) = b
# exp(b, n) = exp(b, n / 2) ** 2             [for even n]
# exp(b, n) = b * (exp(b, (n - 1) / 2) ** 2) [for odd n]


# def exp(b, n)
#     return 1 if n == 0
#     return b if n == 1
#     return b if b == 1

#     b * exp(b, n - 1)
    
# end


# p exp(0, 0) # 1
# p exp(1, 0) # 1
# p exp(1, 1) # 1
# p exp(1, 2) # 1
# p exp(2, 0) # 1
# p exp(2, 1) # 2
# p exp(2, 2) # 4


#use is_a? method and an Array#deep_dup that will perform a "deep" duplication
#of the interior arrays

# def deep_dup(array)
    
#     new_arr = Array.new(array.length)

#     array.each_with_index do |sub_array, idx|
#         new_arr << sub_array
#     end
#     new_arr

#     second_new_arr = Array.new(array.length)

#     new_arr.each do |sub_array|
#         second_new_arr << sub_array
#     end
#     second_new_arr
# end

# def deep_dup(array)
#     return nil if array.empty?

#     new_arr = []
#     array.each do |ele|
#         if ele.is_a?(Array)
#             new_arr << deep_dup(ele)
#         else
#             new_arr << ele
#         end
#     end
#     new_arr
# end

# robot_parts = [["nuts", "bolts", "washers"], ["capacitors", "resistors", "inductors"]]
# p deep_dup(robot_parts)

# nums = [1, [2], [3, [4]]]
# p deep_dup(nums)

# animals = [["monkey"], ["kangaroo", ["dog", "cat"]]]
# p deep_dup(animals)


# # [0, 1, 1, 2, 3, 5, 8]
# # recursive fib
# def fib(n)
#     return [] if n == 0
#     return [0] if n == 1
#     return [0, 1] if n == 2

#     fib(n-1) << fib(n-1)[-1] + fib(n-1)[-2]

# end

# # iterative fib
# # def fib(n)
# #     return 0 if n == 1
# #     return 1 if n == 2
# #     return 1 if n == 3

# #     seq = [0, 1, 1]

# #     while seq.length < n
# #         seq << seq[-2] + seq[-1]
# #     end
# #     seq
# # end

# p fib(0) # []
# p fib(1) # [0]
# p fib(2) # [0, 1]
# p fib(3) # [0, 1, 1]
# p fib(4) # [0, 1, 1, 2]
# p fib(5) # [0, 1, 1, 2, 3]
# p fib(6) # [0, 1, 1, 2, 3, 5]
# p fib(7) # [0, 1, 1, 2, 3, 5, 8]


# Reminder of how quicksort works:
# def quicksort(arr)
#     return arr if arr.length <= 1
#     pivot_arr = [arr.first]
#     left_side = arr[1..-1].select {|num| num < arr.first}
#     right_side = arr[1..-1].select {|num| num >= arr.first}
#     quicksort(left_side) + pivot_arr + quicksort(right_side)
# end

def bsearch(arr, target)
    mid = arr.length / 2
    return mid if arr[mid] == target
    return nil if arr.empty?

    left = arr[0...mid]
    right = arr[mid+1..-1]
   
    if arr[mid] < target
        right_check = bsearch(right, target)
        return nil if right_check.nil?
        left.length + right_check + 1
    else
        bsearch(left, target)
    end
     
end
# if array[mid] < target
#   mid = 3 + bsearch(array[2..-1], target)
#   mid = 3 + 1 + bsearch([4, 5, 6], 6)
#   mid = 3 + 1 + 1 + bsearch([5, 6], 6)
#   mid = 3 + bsearch([6])
#   mid = 3 +

p bsearch([1, 2, 3], 1) # => 0
p bsearch([2, 3, 4, 5], 3) # => 1
p bsearch([2, 4, 6, 8, 10], 6) # => 2
p bsearch([1, 3, 4, 5, 9], 5) # => 3
p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil


def merge_sort(array)
    return [] if array.length == 0
    return array if array.length == 1

end

def merge

end