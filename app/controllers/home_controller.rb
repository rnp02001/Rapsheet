class HomeController < ApplicationController

  def index
    gon.rate = AnnualStateCrimeRate.limit(10)
  end
  #
  # def self.year(year_id, crime_id)
  #   raw_data = AnnualStateCrimeRate.where(year_id: year_id, crime_id: crime_id)
  #   year_data = raw_data.sort("rate DESC")
  # end
  #
  # def self.range(year_data)
  #   min = year_data.first.rate
  #   median_index = year_data.count / 2
  #   median = year_data[median_index].rate
  #   max = year_data.last.rate
  # end

State.all.map do |state|
  [state.abbr, AnnualStateCrimeRate.where(year_id: 3, crime_id: 1, state_id: 32).first.rate]
end
end
