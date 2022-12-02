require 'byebug'

def my_min(list)        # 0(n^2)
    list.each do |el|
       return el if list.all? {|el2| el <= el2}
    end           
end


def my_min_2(list)      # O(n)
    curr_min = Float::INFINITY
    list.each do |el|
        curr_min = el if el < curr_min
    end
    curr_min
end
# p    list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p    my_min_2(list)  # =>  -5

def largest_contiguous_subsum(list) # O(n^2)
    # sums = []
    # (0...list.length).each do |idx1|
    #     (0...list.length).each do |idx2|
    #         sums << list[idx1..idx2].sum if idx1 <= idx2
    #     end
    # end
    # sums.max

    arr = []
    i = 0
    while i < list.length
        j = i
        while j < list.length
            arr << list[i..j]
            j += 1
        end
        i += 1
    end
    sum_arr = arr.map {|ele| ele.sum}
    sum_arr.max
end

list = [5, 3, -7]
# p largest_contiguous_subsum(list) # => 8

list = [2, 3, -6, 7, -6, 7]
# p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])

list = [-5, -1, -3]
# p largest_contiguous_subsum(list) # => -1 (from [-1])

def largest_contiguous_subsum_2(list)
    return list.max if list.all? {|ele| ele < 0}
    largest_sum = 0
    i = 0
    current_max = 0
    while i < list.length
        current_max += list[i]
        if current_max > largest_sum
            largest_sum = current_max
        elsif current_max < 0
            current_max = 0
        end
        i += 1
    end
    largest_sum
end

list = [5, 3, -7]
p largest_contiguous_subsum_2(list) # => 8

list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum_2(list) # => 8 (from [7, -6, 7])

list = [-5, -1, -3]
p largest_contiguous_subsum_2(list) # => -1 (from [-1])