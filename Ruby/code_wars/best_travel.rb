def choose_best_sum(t, k, ls)

total_list = ls.combination(k).to_a
sum = []

total_list.each do |direction|
    sum << direction.inject(0){|sum, number| sum += number}
end

return sum.map(&:to_i).sort.reverse_each.find{|e| e <= t}

end
