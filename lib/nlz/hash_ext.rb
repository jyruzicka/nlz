class Hash
  # Returns the hash produced by running the given block
  # on the hash's values.
  #
  # @param blck [Lambda] The block to run on every value
  # @return [Hash] The resultant hash.
  def modify &blck
    self.reduce({}){ |hsh, (k,v)| hsh[k] = blck[v];hsh }
  end

  # Modifies the hash in place by running the given block on the
  # hash's values.
  #
  # @param blck [Lambda] The block to run on every value
  def modify! &blck
    self.each{ |k,v| self[k] = blck[v] }
  end
end