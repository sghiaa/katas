class Greed
  def self.score(rolls)
    roll_hash = {
      one: 0,
      two: 0,
      three: 0,
      four: 0,
      five: 0,
      six: 0
    }
    rolls.each {|roll|
      if roll == 1
        roll_hash[:one] = roll_hash[:one] + 1
      elsif roll == 2
        roll_hash[:two] = roll_hash[:two] + 1
      elsif roll == 3
        roll_hash[:three] = roll_hash[:three] + 1
      elsif roll == 4
        roll_hash[:four] = roll_hash[:four] + 1
      elsif roll == 5
        roll_hash[:five] = roll_hash[:five] + 1
      elsif roll == 6
        roll_hash[:six] = roll_hash[:six] + 1
      end
    }

    score = 0
    if roll_hash[:one] >= 3
      score += 1000
      roll_hash[:one] -= 3
    elsif roll_hash[:two] >= 3
      score += 200
    elsif roll_hash[:three] >= 3
      score += 300
    elsif roll_hash[:four] >= 3
      score += 400
    elsif roll_hash[:five] >= 3
      score += 500
      roll_hash[:five] -= 3
    elsif roll_hash[:six] >= 3
      score += 600
    end
    score += roll_hash[:one] * 100 + roll_hash[:five] * 50
    return score
  end
end
