require_relative 'spec_helper'
require_relative '../1'

RSpec.describe "#main" do
  context '#sum_of_mults1' do
    it "returns 23 for an argument of 10" do
      expect(sum_of_mults1(10)).to eq(23)
    end

    it "returns 78 for an argument of 20" do
      expect(sum_of_mults1(20)).to eq(78)
    end

    it "returns 233168 for an argument of 1000" do
      expect(sum_of_mults1(1000)).to eq(233168)
    end
  end
  context '#sum_of_mults2' do
    it "returns 23 for an argument of 10" do
      expect(sum_of_mults2(10)).to eq(23)
    end

    it "returns 78 for an argument of 20" do
      expect(sum_of_mults2(20)).to eq(78)
    end

    it "returns 233168 for an argument of 1000" do
      expect(sum_of_mults2(1000)).to eq(233168)
    end
  end
end
