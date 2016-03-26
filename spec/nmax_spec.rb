require 'spec_helper'

describe Nmax do
  it 'has a version number' do
    expect(Nmax::VERSION).not_to be nil
  end

  it 'return array of sorted numbers' do
    expect(Nmax.perform(10)).to eq([11231, 4444, 45, 24, 12, 5, 4, 3, 3, 2])
  end
end
