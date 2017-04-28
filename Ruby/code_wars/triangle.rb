def triangle_type (a, b, c)
    array1 = [a,b,c]
    array1 = array1.sort

    hypotenuse = array1[2]**2
    sum = array1[0] + array1[1]
    sum_squared = array1[0]**2 + array1[1]**2

    if sum <= array1[2]
        return 0
    elsif sum_squared > hypotenuse
        return 1
    elsif sum_squared == hypotenuse
        return 2
    else
        return 3
    end
end
