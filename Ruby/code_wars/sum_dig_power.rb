def sum_dig_pow(a,b)
  array = []
  (a..b).to_a.each do |number|
    if number < 10
      array << number
    elsif number >= 10
      total = 0
      number.to_s.split(//).each_with_index do |digit,index|
        total += digit.to_i ** (index+1)
      end
      if number == total
        array << number
      end
    end
  end

  array
end
