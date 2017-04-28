def convertFracts(lst)
    multi = []
    lst.each{|num| multi << num[1]}

    ans = (multi[0].lcm(multi[1])).lcm(multi[2])

    lst.each do |array|
        array[0] = ans/array[1] * array[0]
        array[1] = ans
    end


end
