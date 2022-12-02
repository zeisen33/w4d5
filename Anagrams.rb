def first_anagram?(search_str, guess_str)    # O(n!)
    all_anagrams = []
    letters = search_str.split("")
    all_letters = letters.permutation.to_a
    words = all_letters.map {|anag| anag.join("")}
    words.include?(guess_str)
end

# p first_anagram?("gizmo", "sally")    #=> false
# p first_anagram?("elvis", "lives")    #=> true

def second_anagram?(search_str, guess_str) # O(n^2)
    return false if search_str.length != guess_str.length
    search_str.each_char {|char| guess_str.delete!(char)}
    return guess_str.length == 0
end

# p second_anagram?("gizmo", "sally")    #=> false
# p second_anagram?("elvis", "lives")    #=> true

def third_anagram?(search_str, guess_str) # O(n^2)
    search_sort = search_str.split("").sort.join("")
    guess_sort = guess_str.split("").sort.join("")
    search_sort == guess_sort
end

# p third_anagram?("gizmo", "sally")    #=> false
# p third_anagram?("elvis", "lives")    #=> true

def fourth_anagram?(search_str, guess_str)