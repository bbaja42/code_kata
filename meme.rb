class Meme
  def add(input)
    arguments = input.split(",")
    return 0 if arguments.empty?
    arguments.map(&:to_i).inject(:+)
  end
end
