def zeros(n)
    num = 1
    zeros = 0
    while 5 ** num < n
        zeros += (n / 5 ** num).floor
        num += 1
    end

    zeros
end
