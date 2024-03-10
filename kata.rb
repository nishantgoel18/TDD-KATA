def add(numbers)
  numbers_to_be_added = numbers.gsub("\n", ',').gsub(';', ',').split(',')
  if numbers.index("\n") == numbers.length-1
    return "invalid input"
  elsif numbers_to_be_added.select{|n| n < 0}.present?
    return "negative numbers not allowed: #{numbers_to_be_added.select{|n| n < 0}.join(',')}"
  else
    return numbers_to_be_added.sum
  end
end
