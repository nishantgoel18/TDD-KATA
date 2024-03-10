require 'pry'
class Kata
  attr_accessor :numbers
  def sum
    return "input is blank" if self.numbers.nil?
    
    numbers_to_be_added = self.numbers.gsub("\n", ',').gsub(';', ',').split(',').map(&:to_i)
    if self.numbers.index("\n") == self.numbers.length-1
      return "invalid input"
    elsif !numbers_to_be_added.select{|n| n.to_i < 0}.empty?
      return "negative numbers not allowed: #{numbers_to_be_added.select{|n| n < 0}.join(',')}"
    else
      return numbers_to_be_added.sum
    end
  end
end
