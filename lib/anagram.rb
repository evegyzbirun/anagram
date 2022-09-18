require 'pry'

class Input 

  attr_reader :inputOne, :inputTwo
  def initialize(inputOne, inputTwo)
    @inputOne = inputOne.gsub(/[^A-Za-z0-9]/, '').downcase
    @inputTwo = inputTwo.gsub(/[^A-Za-z0-9]/, '').downcase
  end

  def anagram?
    if !(@inputOne =~ /[aeiouy]/) || !(@inputTwo =~ /[aeiouy]/)
      return "These inputs are not real words."
    elsif(@inputOne.chars.sort == @inputTwo.chars.sort)
      return "These inputs are anagrams."
    elsif (@inputOne.chars.sort & @inputTwo.chars.sort == [])
      return "These inputs are antigrams."
    else ()
      return "These words have nether anagram or antigram."
    end
  end
end