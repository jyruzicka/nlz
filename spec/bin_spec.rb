require "spec_helper"

describe "Bin" do
  it "should properly bin data" do
    hsh = {
      1 => 2.0,
      2 => 3.0,
      11 => 10.0,
      19 => 2.0,
      31 => 1.0
    }

    binned_data = hsh.bin(10)
    expect(binned_data.keys).to include(0)
    expect(binned_data.keys).to include(10)
    expect(binned_data[0]).to eq(2.5)
    expect(binned_data[10]).to eq(6)
    expect(binned_data[20]).to eq(0)
    expect(binned_data[30]).to eq(1)
  end
end