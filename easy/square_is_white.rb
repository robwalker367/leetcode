# Monkeypatch string class
class String
    def even?
        ['a', 'c', 'e', 'g'].include?(self)
    end

    def odd?
        ['b', 'd', 'f', 'h'].include?(self)
    end
end

def square_is_white(coordinates)
    coordinates = coordinates.split('')
    letter, num = coordinates[0], coordinates[1].to_i - 1
    (letter.even? && num.odd?) || (letter.odd? && num.even?)
end

