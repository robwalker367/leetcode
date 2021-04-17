def find_error_nums(nums)
    n = nums.size
    hash = Hash[(1..n).each_with_object(0).to_a]
    nums.each do |num|
        hash[num] += 1
    end
    [hash.key(2), hash.key(0)]
end

nums = [1,2,2,4]
puts "mismatch: " + find_error_nums(nums).inspect.to_s

