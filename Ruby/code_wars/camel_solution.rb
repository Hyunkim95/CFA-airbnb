def solution(string)
  string.scan(/[A-Z]+/).each{|letter|string.insert(string.index(letter), " ")}
    string
end
