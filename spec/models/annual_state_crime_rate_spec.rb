require 'rails_helper'

RSpec.describe AnnualStateCrimeRate, type: :model do

  # Factory Test
  it "should have a factory" do
    expect(FactoryGirl.build(:annual_state_crime_rate)).to be_valid
  end

  # Association Tests
  context "Associations" do
    it "can have many states" do
      annual_state_crime_rate = FactoryGirl.build(:annual_state_crime_rate)
      state = FactoryGirl.build(:state)
      annual_state_crime_rate.states << state

      expect(annual_state_crime_rate.states).to include(state)
    end

    it "can have many years" do
      annual_state_crime_rate = FactoryGirl.build(:annual_state_crime_rate)
      state = FactoryGirl.build(:year)
      annual_state_crime_rate.years << year

      expect(annual_state_crime_rate.years).to include(year)
    end

    it "can have many crimes" do
      annual_state_crime_rate = FactoryGirl.build(:annual_state_crime_rate)
      state = FactoryGirl.build(:crime)
      annual_state_crime_rate.crimes << crime

      expect(annual_state_crime_rate.crimes).to include(crime)
    end
  end
end
