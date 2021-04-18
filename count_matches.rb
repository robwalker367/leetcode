def count_matches(items, rule_key, rule_value)
    config = [["type", 0], ["color", 1], ["name", 2]]
    items.count do |item|
        config.any? { |k, i| k == rule_key && item[i] == rule_value }
    end
end

