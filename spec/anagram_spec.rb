require 'rspec'
require ("./lib/anagram.rb")

describe('#anagram?') do
  it("is it anagram?") do
    test_subject1 = "Lives"
    test_subject2 = "Evils"
    my_pal = Palindrome.new(test_subject)
    expect(my_pal.is_palindrome?).to(eq(true))
  end 
end
