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
end
