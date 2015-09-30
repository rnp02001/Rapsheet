class AnnualStateCrimeRate < ActiveRecord::Base
  belongs_to :state
  belongs_to :year
  belongs_to :crime
end
