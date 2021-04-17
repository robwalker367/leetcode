def subtract_product_and_sum(n)
    n.digits.reduce(1, &:*) - n.digits.sum
end

