require 'rspec'
require ("./lib/anagram.rb")

describe('#anagram?') do
  it("is it anagram?") do
    test_subject1 = "Lives"
    test_subject2 = "Evils"
    my_ana = Input.new(test_subject1, test_subject2)
    expect(my_ana.anagram?).to(eq("These inputs are anagrams."))
  end 
end

describe('#anagram?') do
  it("is it anagram?") do
    test_subject1 = "Lites"
    test_subject2 = "Evils"
    my_ana = Input.new(test_subject1, test_subject2)
    expect(my_ana.anagram?).to(eq("These inputs are antigrams."))
  end 
end

describe('#anagram?') do
  it("it is antigram if no vowels") do
    test_subject1 = "sv"
    test_subject2 = "vs"
    my_ana = Input.new(test_subject1, test_subject2)
    expect(my_ana.anagram?).to(eq("These inputs are not real words."))
  end 
end

describe('#anagram?') do
  it("it is antigram if no vowels") do
    test_subject1 = "sav"
    test_subject2 = "vfss"
    my_ana = Input.new(test_subject1, test_subject2)
    expect(my_ana.anagram?).to(eq("These words have no letter matches and are antigrams."))
  end 
end
