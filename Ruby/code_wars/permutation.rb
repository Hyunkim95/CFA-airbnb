def permutations(string)
    array = string.split(//)
    new = array.permutation(array.length).to_a.map! {|array| array.join}
    new.uniq
end
