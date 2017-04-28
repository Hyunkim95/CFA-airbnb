def solution(str)
    array = str.split(//)
    length = array.length

    if length % 2 == 0
        new_array = array.each_slice(2).to_a
        return new_array.map!{|mini| mini.join}
    else
        new_array = array.each_slice(2).to_a
        new_array[-1].push('_')
        return new_array.map!{|mini| mini.join}
    end
    new_array
end
