def sort_sentence(s)
  s.split
    .sort_by { |word| word[-1].to_i }
    .map { |word| word[..-1] }
    .join(' ')
end

