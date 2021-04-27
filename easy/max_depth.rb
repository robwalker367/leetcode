def max_depth(s)
    k, max_k = 0, 0
    s.chars.each do |c|
        if c == '('
            k += 1
            max_k = [k, max_k].max
        elsif c == ')'
            k -= 1
        end
    end
    max_k
end

