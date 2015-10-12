require 'rails_helper'

RSpec.describe Crime, type: :model do

  # Factory Test
  it "should have a factory" do
    expect(FactoryGirl.build(:crime)).to be_valid
  end

  # Association Test 
  it "can belong to a crime" do
    annual_state_crime_rate = FactoryGirl.build(:annual_state_crime_rate)
    crime = FactoryGirl.build(:crime)
    annual_state_crime_rate.crimes << crime

    expect(annual_state_crime_rate.crime).to eq(crime)
  end
end
