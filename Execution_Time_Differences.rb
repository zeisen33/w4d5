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

