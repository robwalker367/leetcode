def num_identical_pairs(nums)
    hash = Hash.new(0)
    nums.each { |num| hash[num] += 1 }
    hash.keys.reduce(0) do |acc, k|
        acc + hash[k] * (hash[k]-1) / 2
    end
end

