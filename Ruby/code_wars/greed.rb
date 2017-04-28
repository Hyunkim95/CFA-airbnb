def score(dice)
  dice_count = count_rolls(dice)
  score = 0

  #calculate score
  dice_count.each{|side, count|

    #check for set
    if count >= 3
      score += (1000 + ((count - 3) * 100)) if side == "ones"
      score += (500 + ((count - 3) * 50))   if side == "fives"

      score += 200 if side == "twos"
      score += 300 if side == "threes"
      score += 400 if side == "fours"
      score += 600 if side == "sixes"

    #if no set, score the ones and fives
    else
      score += count * 100 if side == "ones"
      score += count * 50 if side == "fives"
    end
  }

  return score
end

def count_rolls(dice)
  rolls = Hash.new(0)

  #determine how many of each roll you have
  dice.each{|roll|
    rolls["ones"]   += 1 if roll == 1
    rolls["twos"]   += 1 if roll == 2
    rolls["threes"] += 1 if roll == 3
    rolls["fours"]  += 1 if roll == 4
    rolls["fives"]  += 1 if roll == 5
    rolls["sixes"]  += 1 if roll == 6
    }
  return rolls
end
