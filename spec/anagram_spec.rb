require 'rspec'
require ("./lib/anagram.rb")

describe('#anagram?') do
  it("is it anagram?") do
    test_subject1 = "Lives"
    test_subject2 = "Evils"
    my_ana1 = Input.new(test_subject1, test_subject2)
    expect(my_ana1.anagram?).to(eq(true))
  end 
end
