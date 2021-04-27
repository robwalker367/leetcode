def number_of_matches(n)
    if n == 1
        0
    elsif n % 2 == 0
        n/2 + number_of_matches(n/2)
    else
        (n-1)/2 + number_of_matches((n-1)/2 + 1)
    end
end

