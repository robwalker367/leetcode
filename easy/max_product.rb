def max_product(nums)
    nums.each_with_index
      .max_by(2) { |pair| pair.first }
      .map { |pair| pair.first - 1 }
      .reduce(&:*)
end

