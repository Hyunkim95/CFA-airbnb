def snail(array)
    sorted = []
    if array.length == 1
        return array.first
    else
      while !array.empty?
            if array.length == 1
                array[0].each{|num| sorted << num}
                array.clear
            else
              array.first.each {|number| sorted << number} #first row
              array = array.slice!(1..array.length-1) #remove first array

              array.each_with_index do |row,index| #add rhs
                  sorted << row[-1]
                  row.delete_at(-1)
              end

              array[-1].reverse.each {|number| sorted<< number} #add last row
              array.delete_at(-1) #remove last array


              array.reverse.each_with_index do |row,index| #add lhs
                  sorted << row[0]
                  row.delete_at(0)
            end
          end
      end
        return sorted
    end
end
