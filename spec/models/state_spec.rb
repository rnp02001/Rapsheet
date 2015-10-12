require 'rails_helper'

RSpec.describe State, type: :model do

  # Factory Test
  it "should have a factory" do
    expect(FactoryGirl.build(:state)).to be_valid
  end

  # Association Test
  it "can belong to a state" do
    annual_state_crime_rate = FactoryGirl.build(:annual_state_crime_rate)
    state = FactoryGirl.build(:state)
    annual_state_crime_rate.states << state

    expect(annual_state_crime_rate.state).to eq(state)
  end
end
