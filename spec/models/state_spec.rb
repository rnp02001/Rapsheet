require 'rails_helper'

RSpec.describe State, type: :model do

  # Factory Test
  it "should have a factory" do
    expect(FactoryGirl.build(:state)).to be_valid
  end
end
