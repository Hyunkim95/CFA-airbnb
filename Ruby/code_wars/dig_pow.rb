def dig_pow(number, power)
  array = number.to_s.split(//)
  total = 0

  array.each do |number|
    total += number.to_i ** power
    power += 1
  end

  if total % number == 0
    return total/number
  else
    return -1
  end
end
