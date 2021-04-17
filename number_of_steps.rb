def number_of_steps(num)
    k = 0
    while num > 0
        if num % 2 == 0
            num /= 2
        else
            num -= 1
        end
        k += 1
    end
    k
end

