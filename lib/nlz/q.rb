def Hash
  # Convert key values from
  # 2theta to q (momentum transfer)
  # By default, this assumes you're using
  # Cu Ka radiation (wl = 1.54056A). If not,
  # input your own wavelength
  def momentum_transfer(wavelength:1.54056)
    reduce({}) do |hsh,(k,v)|
      theta_rads = (k/2) * Math::PI / 180
      q = 4 * Math::PI * Math::sin(theta_rads) / wavelength
      hsh[q] = v
    end
  end
end