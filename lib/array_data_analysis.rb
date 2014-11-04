class ArrayDataAnalysis
  def initialize data
    @data = data
  end
  def lowest_temperature
    lows = @data.map{|a| a[2]}
    lows.min
  end
  def highest_temperature
    highs = @data.map{|a| a[1]}
    highs.max
  end
  def day_of_lowest_temperature
    sorted = @data.sort_by{ |a| a[2] }
    sorted[0][0]
  end
  def day_of_highest_temperature
    sorted = @data.sort_by{ |a| a[1] }.reverse
    sorted[0][0]
  end
  def average_temperatures
    ary = @data.map {|a| (a[1] + a[2]) / 2.0}
  end
end
