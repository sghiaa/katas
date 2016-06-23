class ArrayDiff
  def self.array_diff(array_one, array_two)
    return_array = []
    array_one.each{|x|
      unless array_two.include? x
        return_array << x
      end
    }
    return_array
  end
end
