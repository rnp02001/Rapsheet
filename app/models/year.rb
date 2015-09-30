class Year < ActiveRecord::Base
  has_many :annual_state_crime_rates
  has_many :states, through: :annual_state_crime_rates
  has_many :crimes, through: :annual_state_crime_rates
end
