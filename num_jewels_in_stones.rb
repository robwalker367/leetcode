require 'set'

def num_jewels_in_stones(jewels, stones)
    jewels = jewels.chars.to_set
    stones.chars.count { |stone| jewels.include?(stone) }
end

