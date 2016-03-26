require 'spec_helper'

describe Nmax do
  it 'raise error if n is less 1' do
    expect{ Nmax.perform(-1) }.to raise_error('Number count is less 1')
  end

  it 'return array of sorted numbers' do
    expect(Nmax.perform(10)).to eq([11231, 4444, 45, 24, 12, 5, 4, 3, 2, 1])
  end
end
