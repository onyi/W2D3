require 'spec_helper'
require 'tdd.rb'

RSpec.describe "Array" do
  describe "#my_uniq" do
    it "should returns array of unique values" do
      expect([1, 2, 1, 3, 3].uniq).to eq([1,2,3])
    end
  end

  describe "#two_sum" do
    it "should return an array of all pairs of positions where the elements at those positions sum to zero" do
      expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
    end
  end

  describe "#my_transpose" do
    it "should converts between row-oriented and column-oriented representations" do
      expect([[0, 1, 2],[3, 4, 5],[6, 7, 8]].my_transpose).to eq([[0, 3, 6],[1, 4, 7],[2, 5, 8]])
    end
  end

  describe "stock_picker" do
    it "should output the most profitable pair of days on which to first buy the stock and then sell the stock" do
      expect(stock_picker([2, 4, 5, 7, 1, 9])).to eq([4, 5])
    end
  end
end