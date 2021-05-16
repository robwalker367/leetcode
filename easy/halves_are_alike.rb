VOWELS = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']

def halves_are_alike(s)
    cut = s.size / 2
    s1, s2 = s[0..cut-1], s[cut..]
    s1.chars.count { |c| VOWELS.include?(c) } == s2.chars.count { |c| VOWELS.include?(c) }
end

