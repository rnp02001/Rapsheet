class AnnualStateCrimeRatesController < ApplicationController
  def index

  end



  def range_year_crime #This should be refactored into the database or a rake task.
    binding.pry
    range = AnnualStateCrimeRate.range_for_crime(params["crime_id"])
    gon.min = range.min
    gon.max = range.max
    gon.year_data = AnnualStateCrimeRate.rates_for_year_and_crime(params["year_id"], params["crime_id"])
    @crimes = Crime.all
    render "home/index"
  end



end
