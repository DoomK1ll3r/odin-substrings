#!/usr/bin/env ruby

# Initialize global variables

result = Hash.new
dictionary = ["hello", "world", "hello world", "potato", "taco", "lo", "wo", "hell", "o"]
string = "hello HellhelloworldhEllwo"

def search_substring(string, dictionary, result)

  new_string = string.downcase.to_s

  dictionary.each do
    |substring|

    # Variables used to slice the string and count the number of substrings
    a = 0
    b = substring.length - 1
    counter = 0

    string.length.times do

      slice = new_string[a..b].to_s
      match = slice.include?(substring.downcase.to_s)

      if match == true
        counter += 1
        result[substring] = counter
      end

      a += 1
      b += 1
    end
  end
end

search_substring(string, dictionary, result)
puts result
