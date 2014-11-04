class ClassDataAnalysis
  def initialize data
    @data = data
  end
  def lowest_temperature
    lows = @data.map{|a| a.low}
    lows.min
  end
  def highest_temperature
    highs = @data.map{|a| a.high}
    highs.max
  end
  def day_of_lowest_temperature
    sorted = @data.sort_by{|a| a.low}
    sorted[0].day
  end
  def day_of_highest_temperature
    sorted = @data.sort_by{|a| a.high}.reverse
    sorted[0].day
  end
  def average_temperatures
    ary = @data.map{|a| (a.low + a.high) / 2.0}
  end
end
