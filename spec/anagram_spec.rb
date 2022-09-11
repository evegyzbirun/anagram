require 'rspec'
require ("./lib/anagram.rb")

describe('#anagram?') do
  it("is it anagram?") do
    test_subject1 = "Lives"
    test_subject2 = "Evils"
    my_ana = Input.new(test_subject1, test_subject2)
    expect(my_ana.anagram?).to(eq("It is anagram."))
  end 
end

describe('#anagram?') do
  it("is it anagram?") do
    test_subject1 = "Lives"
    test_subject2 = "Evils"
    my_ana = Input.new(test_subject1, test_subject2)
    expect(my_ana.anagram?).to(eq("It is antigram."))
  end 
end
