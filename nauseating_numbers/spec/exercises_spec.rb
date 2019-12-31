require 'rspec'
require 'exercises'

describe "#strange_sums" do 
    it "accepts an array of numbers"  do
        expect(strange_sums([]))
    end 

    it "should return number of distinct pairs of elements with a sum of zero" do 
        expect(strange_sums([2,-3,3,  4, -2])).to eq(2)
        expect(strange_sums([42,  3,  -1, -42])).to eq(1)
        expect(strange_sums([-5,  5])).to eq(1)
        expect(strange_sums([19, 6, -3, -20])).to eq(0)
    end 

    it "should accept an array with one element" do
        expect(strange_sums([9])).to eq(0) 
    end 
end 

describe "#pair_product" do 
    it "should accept array of numbers and product as args" do 
        expect(pair_product([3, 4], 12))
    end 

    it "should return true if product is equal to product of a pair in array" do 
        expect(pair_product([3, 4], 12)).to eq(true)
    end 
end 