class AnnualStateCrimeRate < ActiveRecord::Base
  belongs_to :state
  belongs_to :year
  belongs_to :crime
  has_many :states
  has_many :years
  has_many :crimes
end
