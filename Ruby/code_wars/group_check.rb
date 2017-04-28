def group_check(s)
    x = 0
    loop do
        if x == s.length
            break
        elsif s[x] == "[" && s[x+1] == "]"
            s.slice!(x..x+1)
            x = 0
        elsif s[x] == "{" && s[x+1] == "}"
            s.slice!(x..x+1)
            x = 0
        elsif s[x] == "(" && s[x+1] == ")"
            s.slice!(x..x+1)
            x = 0
        else
            x += 1
        end
    end

    if s.empty?
      return true
    else
      return false
    end
end
