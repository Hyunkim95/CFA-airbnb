def nb_year(p0, percent, aug, p)
    # your code
    current_population = p0
    count = 0
    while p > current_population
      new_population = (current_population + current_population*percent/100 + aug).floor
        count += 1
        current_population = new_population
    end

    return count
end
