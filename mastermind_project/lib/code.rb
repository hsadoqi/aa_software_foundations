class Code
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }

  def self.valid_pegs?(chars)
    chars.all? {|char| Code::POSSIBLE_PEGS[char.upcase]}
  end

  attr_reader :pegs

  def initialize(chars)
    if !Code.valid_pegs?(chars)
      raise "those chars are not valid"
    else 
      @pegs = chars.map(&:upcase)
    end
  end

  def self.random(length)
    pegs = Array.new(length) {Code::POSSIBLE_PEGS.keys.sample}
    Code.new(pegs)
  end

  def self.from_string(str)
    Code.new(str.split(""))
  end

  def [](idx)
    @pegs[idx]
  end

  def length 
    @pegs.length
  end

  def num_exact_matches(other_code)
    (0...other_code.length).count { |i| other_code[i] == @pegs[i] }
  end

  def num_near_matches(other_code)
    matches = (0...other_code.length).count { |i| @pegs.include?(other_code[i]) }

    matches - num_exact_matches(other_code)
  end

  def ==(other_code)
    self.pegs == other_code.pegs
  end

end
