class Hash
  # Smooth data. Use the data on either side of your data point to provide
  # a mean value for the data. The more times you loop over it, the smoother
  # it will get. The further you spread your smoothing, the smoother it will
  # get.
  #
  # @param range [Fixnum] How many data points on either side to use in smoothing
  # @param iterations [Fixnum] How many times to smooth the data
  def smooth(range:1, iterations:1)
    smoothed_hash = {}

    my_keys = keys

    my_keys.each_with_index do |k,i|
      smoothing_keys = (i-range..i+range).select{ |v| v.between?(0,my_keys.size-1) }.map{ |ind| my_keys[ind] }
      smoothing_values = smoothing_keys.map{ |key| self[key] }
      avg_value = smoothing_values.reduce(&:+) / smoothing_values.size
      smoothed_hash[k] = avg_value
    end

    if iterations == 1
      smoothed_hash
    else
      smoothed_hash.smooth(range:range,iterations:iterations-1)
    end
  end
end