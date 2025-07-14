def substrings(string, dictionary)
	input = string.split(" ") # Convert the input string into an array of strings
	output = Hash.new(0) # Initalize each value to 0 to allow incrementing

	input.each do |input_word| # Looping through the input string word by word
		dictionary.each do |dict_word| # Looping through the entire dictionary
			if input_word.downcase.include?(dict_word.downcase) # If a word from the input is found in the dictionary, add it to hash and increment it by 1
				output[dict_word] += 1 
			end
		end
	end
	return output # Output the final hash
end

x = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", x)
