def diagonal_sum(mat)
    i, n = 0, mat.size
    k = 0
    while i < n
        k += mat[i][i]
        k += mat[n-i-1][i] unless i == n-i-1
        i += 1
    end
    k
end

