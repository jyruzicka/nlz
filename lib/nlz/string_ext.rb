class String
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
      hsh[frags[0].to_f] = frags[1].to_f
    end
    hsh
  end
end