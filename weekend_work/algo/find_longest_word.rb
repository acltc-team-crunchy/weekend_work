# Complete the method called find_longest_word, which will accept a string as a parameter (usually a sentence), and return another string that will be the longest word in that sentence.

def find_longest_word(sentence)
  words = sentence.split(" ")
  longest_word = ""
  words.each do |word|
    if word.size > longest_word.size
      longest_word = word
    end
  end
  return longest_word
end

#0(n)

# Driver code - don't touch anything below this line.
puts "TESTING find_longest_word..."
puts

result = find_longest_word("What is the longest word in this phrase?")

puts "Your method returned:"
puts result
puts

if result == "longest"
  puts "PASS!"
else
  puts "F"
end