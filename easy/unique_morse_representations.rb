require 'set'

MORSE_ALPHABET = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]

def unique_morse_representations(words)
    transformations = Set.new
    words.each do |word|
        morse_word = word.chars.map do |c|
            MORSE_ALPHABET[c.ord % 'a'.ord]
        end.join
        transformations.add(morse_word)
    end
    transformations.size
end

