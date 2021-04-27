def largest_altitude(gain)
    curr_alt, high_alt = 0, 0
    gain.each do |g|
        curr_alt += g
        high_alt = [curr_alt, high_alt].max
    end
    high_alt
end

