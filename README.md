# nlz

Welcome to nlz. Nlz (short for "analyse") is a stastical analysis gem (except all my stats friends would hate me calling it that) for work I seem to constantly be doing. By putting it in one package, I can avoid always repeating the same code. Oh, and I'm going to put it on the net too, because why not?

## Installation

*work in progress*

## Use

    require "nlz"
    data = {
      1 => 0.4,
      2 => 0.3,
      3 => 0.6,
      4 => 0.7,
      5 => 0.8
    }
    # But what you really want to do is...
    data = File.tsv("file.dat")
    data2 = File.csv("file.csv")

## Binning data

When you bin data, you group keys into "bins" of a given size, and average their values. Useful if you sample at different rates across your data.

    binned_data = data.bin(0.01) # Bin data with bins sized 0.01 units

## Smoothing data

When you bin data, you use values on either side to average it out. You can alter the *range* of the smoothing, which is how many points in either direction it reaches to smooth the data out, or you can alter the number of *iterations* the smoothing goes through.

    smoothed_data = data.smooth(range:3, iterations:2) # Smooth data two times, with a range of 3

## Normalise

Normalised data is set such that the minimum value is 0 and the maximum value is 1.

    normalised_data = data.normalise # No options

## Momentum transfer

If you're doing powder X-ray diffraction you'll find all sorts of data listed using the Copper K-alpha diffraction angle as an abscissa. Which is silly, especially if you ever have to compare it to synchrotron PXRD. Instead, you should plot all your PXRD (and all scattering) data against the momentum transfer vector Q (units: 1/A). And handily enough, you can do it with this little package:

    q_data = data.momentum_transfer(wavelength:1.96) # wavelength is in angstroms, and will default to copper

# History

## 0.1.0

* First version!