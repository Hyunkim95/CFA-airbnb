def scramble(s1,s2)
    s1 = s1.downcase.split(//)
    s2 = s2.downcase.split(//)
    count = 0

    if s1.length < s2.length
        return false
    else
        s2.each do |letter|
            if s1.include?(letter)
                position = s1.find_index(letter)

                if position.is_a? Array
                    position = position[0]
                else
                    position
                end
                s1.delete_at(position)
                count += 1
            else
                next
            end
        end

        s2.length == count ? true : false
    end

end
