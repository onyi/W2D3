require "byebug"

class Array
  def my_uniq
    hash = Hash.new(0)
    self.each do |ele|
      hash[ele] += 1
    end
    hash.keys
  end

  def two_sum
    sums = []
    self.each_with_index do |ele, idx|
      (idx+1...self.length).each do |sub_idx|
        sums << [idx, sub_idx] if self[idx] + self[sub_idx] == 0
      end
    end
    sums
  end

  def my_transpose
    outer_arr = []
    i = 0
    while i < self.length
      inner_arr = []
      self.length.times do |j|
        inner_arr << self[j][i]
      end
      outer_arr << inner_arr
      i += 1
    end
    outer_arr
  end

end

def stock_picker(arr)
  profits = Hash.new { |h, k| h[k] = [] }
  arr.each_with_index do |price1, day|
    (day+1...arr.length).each do |other_day|
      difference = arr[other_day] - arr[day]
      profits[difference] = [day, other_day]
    end
  end
  # sorted = profits.sort_by { |k, v| k }
  # sorted.last[1].flatten
  profits[profits.keys.max]
  # select { |k, v| }
end