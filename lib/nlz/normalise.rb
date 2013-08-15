class Hash
  # Normalise data. Ensure that no value exceeds unity, or
  # drops below zero.
  #
  # @return [Hash] The normalised hash.
  def normalise
    my_values = values
    v_min = my_values.min
    v_max = my_values.max
    range = v_max - v_min

    return modify{ |v| (v - v_min) / range }
  end
end