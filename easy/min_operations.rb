def min_operations(nums)
    i, n = 0, nums.size
    ops = 0
    while i < n-1
        if nums[i] >= nums[i+1]
            ops += nums[i]+1 - nums[i+1]
            nums[i+1] = nums[i] + 1
        end
        i += 1
    end
    ops
end

