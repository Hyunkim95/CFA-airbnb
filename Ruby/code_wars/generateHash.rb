def generateHashtag(str)
   if str.split(" ").empty?
       return false
   end
    array = str.split(" ")
    hashtag = array.map! {|word| word.capitalize}.unshift('#').join
    if hashtag.length > 140
        return false
    end
    return hashtag
end
