def count_good_triplets(arr, a, b, c)
    arr.combination(3).count do |pi|
        i, j, k = pi
        (i-j).abs <= a && (j-k).abs <= b && (i-k).abs <= c
    end
end

