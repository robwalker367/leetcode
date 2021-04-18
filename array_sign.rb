def array_sign(nums)
    p = nums.reduce(1, &:*)
    if p > 0
        1
    elsif p < 0
        -1
    else
        0
    end
end

