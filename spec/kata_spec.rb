require_relative '../kata'
require 'rspec'

RSpec.describe "kata.rb" do
  context "sum method" do
    it "should add the numbers if input is correct" do
      kata = Kata.new
      kata.numbers = "1,2"
      expect(kata.sum).to eq(3)
    end

    it "should add the numbers correctly when input contains ';' as delimiter" do
      kata = Kata.new
      kata.numbers = "1;2"
      expect(kata.sum).to eq(3)
    end

    it "should add the numbers correctly when input contains ';' & ',' as delimiter" do
      kata = Kata.new
      kata.numbers = "1;2,3"
      expect(kata.sum).to eq(6)
    end

    it "should add the numbers correctly when input contains ';', '\n' & ',' as delimiter" do
      kata = Kata.new
      kata.numbers = "1;2,3\n43"
      expect(kata.sum).to eq(49)
    end

    it "should return invalid input message if the numbers input is not valid" do
      kata = Kata.new
      kata.numbers = "1;2; \n"
      expect(kata.sum).to eq("invalid input")
    end

    it "should return error when input contains negative number" do
      kata = Kata.new
      kata.numbers = "1;-2"
      expect(kata.sum).to eq("negative numbers not allowed: -2")
    end
  end
end