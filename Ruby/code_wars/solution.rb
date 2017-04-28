def solution(number)
    total = 0
    (3...number).to_a.each do |num|
      if num % 3 == 0 || num % 5 == 0
        total += num
      end
    end

    total
end
