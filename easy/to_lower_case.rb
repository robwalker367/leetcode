def to_lower_case(str)
    i, n = 0, str.length
    while i < n
        c = str[i]
        if "A".ord <= c.ord && c.ord <= "Z".ord
            str[i] = (c.ord + 32).chr
        end
        i += 1
    end
    str
end

