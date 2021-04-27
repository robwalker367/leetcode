require 'set'

ALPHABET_SIZE = 26

def check_if_pangram(sentence)
  sentence.chars.to_set.size == ALPHABET_SIZE
end

