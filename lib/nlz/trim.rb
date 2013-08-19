class Hash
  # Remove any values from the hash whose key is
  # less than +minimum+ or greater than +maximum+.
  #
  # @param minimum [Fixnum] Minimum value for the key
  # @param maximum [Fixnum] Maximum value for the key
  # @return [Hash] The trimmed hash
  def trim(minimum:nil, maximum:nil)
    minimum ||= self.keys.min
    maximum ||= self.keys.max
    rng = (minimum..maximum)

    self.select{ |k,v| rng.cover?(k) }
  end

  # Perform +trim+ in place, modifying the hash itself
  def trim!(minimum:nil, maximum:nil)
    keys_to_trim = []
    keys_to_trim += keys.select{ |k| k < minimum } if minimum
    keys_to_trim += keys.select{ |k| k > maximum } if maximum

    keys_to_trim.each{ |k| delete(k) }
  end
end