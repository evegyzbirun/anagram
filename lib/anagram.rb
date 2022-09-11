require 'pry'
#"ruby" and "bury" are anagrams because they contain the same letters.
# "These words are anagrams." different cases but should still be anagrams. "Tea" is still an anagram of "Eat". 
# Add a rule to check if the inputs are words.
# "pkmn" isn't an anagram of "kmpn" because "pkmn" isn't a real word.) A word must contain a vowel (a, i, e, o, u) or y. 
# "These words have no letter matches and are antigrams.  "hi" has no matches with "bye".
# Spaces and punctuation shouldn't count (so they should be removed).

class Input 
  def initialize(inputOne, inputTwo)
    @inputOne = inputOne
    @inputTwo = inputTwo
  end
  def anagram?
  end
end