def odd_cells(m, n, indices)
    matrix = initialize_matrix(m, n)
    apply_increments(matrix, indices)
    count_odds(matrix)
end

def initialize_matrix(m, n)
    Array.new(m) { Array.new(n, 0) }
end

def apply_increments(matrix, indices)
    indices.each { |index| apply_increment(matrix, index) }
end

def apply_increment(matrix, index)
    row, col = index
    m, n = matrix.size, matrix[0].size
    (0...m).each { |i| matrix[i][col] += 1 }
    (0...n).each { |i| matrix[row][i] += 1 }
end

def count_odds(matrix)
    matrix.reduce(0) do |acc, row|
        acc + row.count { |val| val.odd? }
    end
end

