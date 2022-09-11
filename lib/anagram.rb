require 'pry'
#"ruby" and "bury" are anagrams because they contain the same letters.
# "These words are anagrams." different cases but should still be anagrams. "Tea" is still an anagram of "Eat". 
# Add a rule to check if the inputs are words.
# "pkmn" isn't an anagram of "kmpn" because "pkmn" isn't a real word.) A word must contain a vowel (a, i, e, o, u) or y. 
# "These words have no letter matches and are antigrams.  "hi" has no matches with "bye". "These words have no letter matches and are antigrams."
# Spaces and punctuation shouldn't count (so they should be removed).
# =~ /[aeiou]/
# binding.pry
# irb(main):006:0> vowels = ["a", "e", "i", "o", "u", "y"]
# => ["a", "e", "i", "o", "u", "y"]
# irb(main):007:0>  ["h","i"].any? { |n| n = vowels }
# => true

class Input 
  attr_reader :inputOne, :inputTwo
  def initialize(inputOne, inputTwo)
    @inputOne = inputOne.gsub(/[^A-Za-z0-9]/, '').downcase
    @inputTwo = inputTwo.gsub(/[^A-Za-z0-9]/, '').downcase
  end
  def anagram?
    if (@inputOne =~ /[aeiou]/) && (@inputTwo =~ /[aeiou]/)
      return "These inputs are not real words."
    elsif()
      return "These inputs are antigrams."
    elsif()
      return "These words have no letter matches and are antigrams."
    else ()
      return "These inputs are not real words."
    end
    
  end
end