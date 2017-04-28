def valid_parentheses(string)
  array = string.split(//).select{|a| a == "(" || a == ")"}

  if array.empty?
    return true
  end

  if array[0] == "(" && array[-1] == ")"
    if array.count("(") == array.count(")")
      return true
    else
      return false
    end
  else
    return false
  end

end
