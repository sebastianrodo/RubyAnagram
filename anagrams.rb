require 'pry'

class Anagram
  WORDS = File.read("words.txt").split

  def get_anagrams
    sort_list_of_words.select do |word, matching_words|
      matching_words.length > 1
    end
  end

  def get_ananagrams
    sort_list_of_words.select do |word, matching_words|
      matching_words.length == 1
    end
  end

  def search_anagrams(word_to_find)
    WORDS.select { |word| word.chars.sort === word_to_find.chars.sort }
  end

  private

  def sort_list_of_words
    WORDS.each_with_object(Hash.new []) do |word, hash|
      hash[word.chars.sort] += [word]
    end
  end
end
