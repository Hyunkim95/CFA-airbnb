def anagrams(word, words)
  words.select!{|w| w.split(//).sort == word.split(//).sort }
end
