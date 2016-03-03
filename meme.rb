class NegativeNumberNotAllowed < Exception
end

# go away rubcop
class Meme
  def add(input)
    # check for delimiter
    delimiter = /,|\n/
    if input[0..1] == '//'
      delimiter = input[2]
      input = input[4..-1]
    end

    # puts "INPUT *#{input}* ; DELIMITER *#{delimiter}*"
    arguments = input.split(delimiter)
    return 0 if arguments.empty?

    all_numbers = arguments.map(&:to_i)
    all_negative_numbers = all_numbers.select { |x| x < 0 }

    raise NegativeNumberNotAllowed(all_negative_numbers.to_s) if !all_negative_numbers.empty?

    all_numbers.inject(:+)
  end
end
