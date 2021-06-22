def freq_alphabets(s)
    output = ""
    i = 0
    while i < s.length
        if s[i+2] == "#"
            output << to_alph(s[i..i+1])
            i += 3
        else
            output << to_alph(s[i])
            i += 1
        end
    end
    output
end

def to_alph(x)
    (x.to_i.ord + 96).chr
end

