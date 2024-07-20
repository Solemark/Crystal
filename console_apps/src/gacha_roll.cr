module GachaRoll
  extend self
  enum Game
    FGO
    AK
    GI
  end

  def roll(game : Game) : String
    res : String = ""
    case game
    when Game::FGO
      res = play("FGO", 100, 300, 5)
    when Game::AK
      res = play("AK", 50, 100, 6)
    when Game::GI
      res = play("GI", 60, 90, 5)
    else
    end
    res
  end

  private def play(game : String, rate : Int32, pity : Int32, rarity : Int32, i : Int32 = 1) : String
    loop do
      if i >= pity
        return "You hit pity at #{pity} for a #{rarity} star in #{game}"
      end
      if rate == Random.rand rate + 1
        return "It took #{i}/#{pity} to get a #{rarity} star in #{game}"
      end
      i += 1
    end
  end
end
