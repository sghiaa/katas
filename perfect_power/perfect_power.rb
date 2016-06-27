class PerfectPower
  def self.isPP(n)
    power = 0
    root = 2
    num = 1
    while root <= Math.sqrt(n)
      num = 1
      power = 0
      while num < n
        num *= root
        power += 1
      end
      if num == n
        return [root, power]
      end
      root += 1
    end
    nil
  end
end
