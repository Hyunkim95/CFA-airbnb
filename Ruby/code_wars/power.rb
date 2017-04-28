def power(s)
    s.length
    list = []
    count = 1
    while count < s.length
        s.combination(count).to_a.each {|array| list.push(array)}
    count += 1
    end
    list.push([])
    list.push(s)
end
