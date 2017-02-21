require_relative 'spec_helper.rb'
require_relative '../card'

describe Card do
  before do
    @card = Card.new(:hearts, 11)

  end

  describe "Checking Card Value" do
    it "has value of 11" do
      @card.value.must_equal 11
    end
  end

  describe "Checking Card Suit" do
    it "has value :hearts" do
      @card.suit.must_equal :hearts
    end
  end

  it "Errors out if given an invalid suit" do
    proc { Card.new( :pokemon, 11 ) }.must_raise ArgumentError
  end

end
