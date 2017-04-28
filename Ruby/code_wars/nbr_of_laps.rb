def nbr_of_laps(x, y)
    lcm = x.lcm(y)
    return [lcm/x, lcm/y]
end
