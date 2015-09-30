class Crime < ActiveRecord::Base
  has_many :annual_state_crime_rates
  has_many :states through: :annual_state_crime_rates
  has_many :years through: :annual_state_crime_rates
end
