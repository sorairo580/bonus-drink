class BonusDrink
  def self.total_count_for(amount)
    amount + count_bonus(amount)
  end
  
  private

  def self.count_bonus(amount)
    bonus = 0
    if amount >= 3
      amount -= 3
      bonus += 1
      bonus = bonus + (amount / 2) if amount > 0 # 2本飲めばbonusが1本ついてくる
    end
    bonus
  end
end

puts BonusDrink.total_count_for(100)