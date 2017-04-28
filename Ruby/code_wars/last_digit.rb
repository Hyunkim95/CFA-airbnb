def last_digit(n1, n2)
  return 1 if n2 ==0
  n1 = n1.to_s.split(//)[-1].to_i
  case n1
  when 1
    return 1
  when 2 #1-2 2-4 3-8 4-6
    r = n2%4
    if r == 1 || n2 == 1
      2
    elsif  r == 2 || n2 == 2
      4
    elsif  r == 3 || n2 == 3
      8
    elsif  r == 0 || n2 == 2
      6
    else
    end
  when 3 #1-3 2-9 3-7
    r = n2%4
    if r == 1 || n2 == 1
      3
    elsif  r == 2 || n2 == 2
      9
    elsif  r == 3 || n2 == 3
      7
    elsif  r == 0 || n2 == 4
      1
    else
    end
  when 4
    if n2%2 == 0
      6
    else
      4
    end
  when 5
    5
  when 6
    6
  when 7 #1-7, 2-9, 3-3, 4-1
    r = n2%4
    if r == 1 || n2 == 1
      7
    elsif  r == 2 || n2 == 2
      9
    elsif  r == 3 || n2 == 3
      3
    elsif  r == 0 || n2 == 2
      1
    else
    end
  when 8 #1-8, 2-4, 3-2, 4-6
    r = n2%4
    if r == 1 || n2 == 1
      8
    elsif  r == 2 || n2 == 2
      4
    elsif  r == 3 || n2 == 3
      2
    elsif  r == 0 || n2 == 2
      6
    else
    end
  when 9
    if n2%2 == 0
      1
    else
      9
    end
  else
    return 0
  end
end
