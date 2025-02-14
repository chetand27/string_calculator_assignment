class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?
    # check if there is any custom delimiters
    if numbers.start_with?('//')
      delimiter, rest = numbers[2..-1].split('\n', 2)
      numbers = rest.split(delimiter).join(',')
    else
      numbers = numbers.gsub('\n', ',')
    end

    numbers.split(',').map(&:to_i).sum
  end
end
