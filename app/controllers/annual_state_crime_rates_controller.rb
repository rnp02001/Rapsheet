class AnnualStateCrimeRatesController < ApplicationController
  def index

  end

  def rate_range #This should be refactored into the database or a rake task.
    range = AnnualStateCrimeRate.range_for_crime(params["id"])
    binding.pry
    gon.min = range.min
    gon.max = range.max
    #do we want an average too?
  end

  def year_rates
    gon.year_data = AnnualStateCrimeRate.rates_for_year_and_crime(params["year_id"], params["crime_id"])



  end

end
