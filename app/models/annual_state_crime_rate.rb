class AnnualStateCrimeRate < ActiveRecord::Base
  belongs_to :state
  belongs_to :year
  belongs_to :crime
  has_many :states
  has_many :years
  has_many :crimes

  def self.range_for_crime(id)
    rate_records = self.all.where(crime_id: id)
    rate_records.map {|record| record.rate}
  end

  def self.rates_for_year_and_crime(year_id, crime_id)
    year_raw_data = AnnualStateCrimeRate.all.where(year_id: Year.find_by(year: year_id.to_i).id, crime_id: crime_id)
    array = year_raw_data.map {|item| [item.state.abbr, item.rate]}
    array.sort_by!{|s,r|r}.reverse!
    array.each_with_index.map {|item, index| item.push(index)}
  end

end
