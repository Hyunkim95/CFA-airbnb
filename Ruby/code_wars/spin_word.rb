def spinWords(string)
	words = string.split(" ")
	new_sentence = []

	words.each do |word|
		if word.length >= 5
			rev_word = word.reverse
			new_sentence.push(rev_word)
		else
			new_sentence.push(word)
		end
	end

	return new_sentence.join(" ")

end
