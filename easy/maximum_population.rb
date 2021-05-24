MIN_YEAR = 1950
MAX_YEAR = 2050

# First attempt
def maximum_population(logs)
  counts = (MIN_YEAR..MAX_YEAR).map do |year|
    [year, logs.count { |log| log[0] <= year && year < log[1] }]
  end
  counts.max_by { |count| count[1] }.first
end

# After looking at discussion
def maximum_population_optimized(logs)
  counts = Array.new(MAX_YEAR - MIN_YEAR, 0)

  logs.each do |log|
    counts[log[0] - MIN_YEAR] += 1
    counts[log[1] - MIN_YEAR] -= 1 
  end

  i, n = 0, counts.size
  max_pop, max_pop_year = counts[0], MIN_YEAR
  while i < n
    counts[i] += (i > 0) ? counts[i-1] : 0

    if counts[i] > max_pop
      max_pop = counts[i]
      max_pop_year = i + MIN_YEAR
    end
    i += 1
  end

  max_pop_year
end

x = [[1993,1999],[2000,2010]]
puts maximum_population_optimized(x)
