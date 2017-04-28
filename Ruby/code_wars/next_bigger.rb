def next_bigger(n)
  digits = n.to_s.chars
  k = digits.each_cons(2).to_a.rindex { |a, b| a < b }
  return -1 if k.nil?

  l = digits.rindex { |n| digits[k] < n }
  digits[k], digits[l] = digits[l], digits[k]
  [digits[0..k], digits[k+1..-1].reverse].join.to_i
end
