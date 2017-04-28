def string_output(array)
    string = ''
    array.each do |number|
        string += number.to_s
    end

    return string
end

def createPhoneNumber(numbers)
bracket = string_output(numbers[0..2])
first_part = string_output(numbers[3..5])
second_part = string_output(numbers[6..9])
return "(#{bracket}) #{first_part}-#{second_part}"
end
