def smaller_numbers_than_current(nums)
    nums.map { |num| nums.count { |x| x < num } }
end

