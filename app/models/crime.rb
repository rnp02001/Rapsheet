class Crime < ActiveRecord::Base
  has_many :annual_state_crime_rates
  has_many :states, through: :annual_state_crime_rates
  has_many :years, through: :annual_state_crime_rates


  def Crime.range_for_crime(id)
    rate_records = AnnualStateCrimeRate.all.where(crime_id: id)
    binding.pry
    rate_records.map {|record| record.rate}
  end


end
