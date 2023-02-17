require 'spec_helper'

RSpec.describe Chip do
  let(:chip) {Chip.new("Player", "Column")}

  it 'exists' do
    expect(chip).to be_an_instance_of(Chip)
  end
end