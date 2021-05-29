def count_good_rectangles(rectangles)
    square_lengths = rectangles.map(&:min)
    max_length = square_lengths.max
    square_lengths.count(max_length)
end

