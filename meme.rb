class Meme
  def add(input)
    arguments = input.split(/,|\n/)
    return 0 if arguments.empty?
    arguments.map(&:to_i).inject(:+)
  end
end
