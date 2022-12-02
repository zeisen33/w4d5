def anagram_1?(search_str, guess_str)    # O(n!)
    all_anagrams = []
    letters = search_str.split("")
    all_letters = letters.permutation.to_a
    words = all_letters.map {|anag| anag.join("")}
    words.include?(guess_str)
end

def anagram_2?



p anagram_1?("gizmo", "sally")    #=> false
p anagram_1?("elvis", "lives")    #=> true

