require 'spec_helper'

RSpec.describe Cell do
  let(:cell) {Cell.new("A", 6)}

  it "exists" do        
    expect(cell).to be_an_instance_of(Cell)
  end

  it 'has a value' do
    expect(cell.value).to eq(".")
  end
end