require "spec_helper"

describe Hash do
  describe "#modify" do
    it "should alter values in place" do
      h = {a:1, b:2, c:3}
      h = h.modify{ |v| v**2 }
      expect(h[:a]).to eq(1)
      expect(h[:c]).to eq(9)
    end
  end
end

describe String do
  describe "#parse" do
    it "should parse strings correctly" do
      trial_string = <<-eol
1, 2
2,   5
3,3
      eol
      h = trial_string.parse(/,\s*/)
      expect(h[1.0]).to eq(2.0)
      expect(h[2.0]).to eq(5.0)
      expect(h[3.0]).to eq(3.0)  
    end
  end
end