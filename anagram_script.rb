require 'pry'
require ('./lib/anagram.rb')
puts 'The anagram program only takes words, it deletes all numbers'
puts 'Please enter first string:'
input1 = gets.chomp
puts 'Please enter second string:'
input2 = gets.chomp
show = Input.new(input1, input2)
puts "The two string inputs are: #{show.anagram?}"