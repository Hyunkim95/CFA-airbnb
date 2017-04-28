def likes(names)
   count = names.length
      case count
      when 0
         return "no one likes this"
      when 1
         return "#{names[0]} likes this"
      when 2
          return "#{names[0]} and #{names[1]} like this"
      when 3
          return "#{names[0]}, #{names[1]} and #{names[2]} like this"
      else
          "#{names[0]}, #{names[1]} and #{count-2} others like this"
      end
end
