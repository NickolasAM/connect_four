require 'spec_helper'

RSpec.describe Cell do
  let(:cell) {Cell.new("C3")}

  it "exists" do        
    expect(cell).to be_an_instance_of(Cell)
  end
end