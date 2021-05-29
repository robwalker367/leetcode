def remove_outer_parentheses(s)
    output = ""
    k = 0
    i, n = 0, s.length
    while i < n
        char = s[i]

        if char == "("
            output += char if k > 0
            k += 1
        else
            k -= 1
            output += char if k > 0
        end

        i += 1
    end
    output
end

