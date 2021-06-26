def remove_element(nums, val)
  i, n = 0, nums.size
  last_index = 0
  while i < n
    if nums[i] != val
      nums[last_index] = nums[i]
      last_index += 1
    end
    i += 1
  end
  last_index-1
end

