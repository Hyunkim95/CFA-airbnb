def double(array, counter)
    count = counter
    while count < array.length
        array[count] = array[count] * 2
        count += 2
    end
end

def validate(n)
    array = n.to_s.split(//)
    array.map!{|number| number.to_i}
    count = 0
    if array.length % 2 == 0
        double(array, 0)
    else
        double(array, 1)
    end

    array.each_with_index do |number, index|
        if number > 9
           array[index] = number - 9
        else
        end
    end

    sum = 0

    array.each do |number|
        sum += number
    end

    if sum % 10 == 0
        return true
    else
        return false
    end
end
