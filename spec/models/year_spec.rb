require 'rails_helper'

RSpec.describe Year, type: :model do

  # Factory Test
  it "should have a factory" do
    expect(FactoryGirl.build(:year)).to be_valid
  end

  # Association Test
  it "can belong to a year" do
    annual_state_crime_rate = FactoryGirl.build(:annual_state_crime_rate)
    year = FactoryGirl.build(:year)
    annual_state_crime_rate.years << year

    expect(annual_state_crime_rate.year).to eq(year)
  end
end
