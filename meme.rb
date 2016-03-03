# go away rubcop
class Meme
  def add(input)
    # check for delimiter
    delimiter = /,|\n/
    if input[0..1] == '//'
      delimiter = input[2]
      input = input[4..-1]
    end

    #puts "INPUT *#{input}* ; DELIMITER *#{delimiter}*"
    arguments = input.split(delimiter)
    return 0 if arguments.empty?

    arguments.map(&:to_i).inject(:+)
  end
end
