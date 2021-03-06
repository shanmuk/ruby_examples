my_array = %w{This is a test of the longest word check}
longest_word = ''
my_array.each do |word|
	longest_word = word if longest_word.length < word.length
end

puts longest_word


num_array = %w{12 34 56 2 67 81}
highest_number = 0
num_array.each do |num| 
	num = num.to_i
	highest_number = num if highest_number < num
end

puts highest_number
 
class AllVowels
	include Enumerable
	@@vowels = %w{a e i o u}
	def each
		@@vowels.each {|v| yield v}
	end
end

x = AllVowels.new
x.each {|i| puts i}
puts x.collect {|i| i + "x"}
puts x.detect {|i| i > "j"}
puts x.select {|i| i > "j"}
puts x.sort
puts x.max 
puts x.min 
