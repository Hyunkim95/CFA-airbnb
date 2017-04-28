def pig_it text
    new_sentence = []

    array = text.split(" ")
    array.each do |word|

    if word[/[a-zA-Z]+/]
        new_sentence << "#{word[1..(word.length-1)]}" + "#{word[0]}ay"
    else
        new_sentence << word
    end

    end

    new_sentence.join(" ")
end
