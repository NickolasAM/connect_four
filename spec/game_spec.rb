require 'spec_helper'

RSpec.describe Game do

  let(:game) {Game.new}

  it "exists" do
      expect(game).to be_an_instance_of(Game)
  end




end