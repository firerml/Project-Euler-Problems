require_relative 'spec_helper'
require_relative '../2'

RSpec.describe "#main" do
  context '#sum_even_fib' do
    it "returns 44 for a max value of 100" do
      expect(sum_even_fib(100)).to eq(44)
    end
    it "returns 4613732 for a max value of 4,000,000" do
      expect(sum_even_fib(4_000_000)).to eq(4613732)
    end
  end
end
