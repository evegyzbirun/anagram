require 'pry'
#"ruby" and "bury" are anagrams because they contain the same letters.
# "These words are anagrams." different cases but should still be anagrams. "Tea" is still an anagram of "Eat". 
# Add a rule to check if the inputs are words.
# "pkmn" isn't an anagram of "kmpn" because "pkmn" isn't a real word.) A word must contain a vowel (a, i, e, o, u) or y. 
# "These words have no letter matches and are antigrams.  "hyi" has no matches with "byue". "These words have no letter matches and are antigrams."
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

    if !(@inputOne =~ /[aeiou]/) && !(@inputTwo =~ /[aeiou]/)
      return "These inputs are not real words."
    elsif(@inputOne.chars.sort == @inputTwo.chars.sort)
      return "These inputs are anagrams."
    elsif (@inputOne.chars.sort & @inputTwo.chars.sort == [])
      return "These inputs are antigrams."
      
    else ()
    
      return "These words have nether anagram or antigram."
    end
   
    
  end

  # def antigram?
  #   new_array = @inputOne.chars.sort & @inputTwo.chars.sort
  #   if (new_array.length == 0)
  #     "These inputs are antigrams."
  #   else
  #     "These words have nether anagram or antigram."
  #   end
  #   # contains logic, returns true or false
  # end
   
end