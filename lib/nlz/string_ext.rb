class String

  # Turns a string into an integer or float,
  # depending on whether it's an integer, or,
  # you guessed it, a float
  #
  # @returns [int, float, or string] the appropriate class
  def to_number
    if self =~ /^\-?\d+$/ # integer
      to_i
    elsif self =~ /^\-?\d+.\d+$/ # float
      to_f
    else
      self
    end
  end

  # Parses a string block given a delimiter. Returns
  # a has of key/value pairs.
  #
  # @param delimiter [String,Regexp] The delimiter to use. Either string or
  #  regexp can be supplied
  # @return [Hash] The data
  def parse(delimiter)
    hsh = {}
    self.split(/[\n\r]+/).each do |line|
      frags = line.split(delimiter)
      hsh[frags[0].to_number] = frags[1].to_number
    end
    hsh
  end
end