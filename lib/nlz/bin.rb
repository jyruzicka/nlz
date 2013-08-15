class Hash
  # Bin data. A series of "bins" of a size you
  # define are arranged, and data is allocated into
  # the relevant bin. The returned hash contains the
  # average of each bin.
  #
  # @param size [Fixnum] The size of the bin
  # @return [Hash] The binned hash
  def bin size
    my_keys = self.keys #cache this, we'll be referring to it a lot
    key_max = my_keys.max

    binned_hash = {}
    ceiling = 0

    begin
      floor = ceiling
      ceiling = (floor + size)
      candidates = select{ |k,v| k < ceiling && k >= floor }
      binned_hash[floor] = if candidates.empty?
        0
      else
        candidates.map{ |a| a[1]}.reduce(&:+) / candidates.size
      end
    end until ceiling > key_max
    binned_hash
  end
end