def replace_digits(s)
    alphabet = ('a'..'z').to_a
    chars = s.chars
    chars.each_with_index.map do |c, i|
        next c if i.even?
        index = alphabet.index(chars[i-1])
        alphabet[index + c.to_i]
    end.join
end

