require 'pry'
class Anagram
  WORDS = File.read("words.txt").split

  @anagrams = []
  @anangrams = []

  def self.sort_list_of_words
    words_hash = WORDS.each_with_object(Hash.new []) do |word, hash|
      hash[word.chars.sort] += [word]
    end

    words_hash.each do |word, matching_words|
      matching_words.length > 1 ? @anagrams += matching_words : @anangrams += matching_words
    end
  end

  def self.find_anagrams_in_the_list(word_to_find)
    WORDS.select { |word| word.chars.sort === word_to_find.chars.sort }
  end
end
