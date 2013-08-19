require "spec_helper"

describe "Normalise" do
  it "should normalise data" do
    hsh = {
      1 => 6.0,
      2 => 2.0,
      3 => 3.0
    }

    n = hsh.normalise
    expect(n[3]).to eq(0.25)
  end
end