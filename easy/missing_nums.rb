def missing_number(nums)
  missing_num = nums.size
  for i in (0..nums.size-1)
    missing_num ^= nums[i] ^ i
  end
  missing_num
end

nums = [3,0,1]
puts "missing_num: " + missing_number(nums).inspect.to_s

