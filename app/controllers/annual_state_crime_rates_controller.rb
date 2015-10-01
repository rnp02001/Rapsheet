class AnnualStateCrimeRatesController < ApplicationController
  def index

  end

  def rate_range #This should be refactored into the database or a rake task.
    range = AnnualStateCrimeRate.range_for_crime(params["id"])
    binding.pry
    gon.min = range.min
    gon.max = range.max
  end

end
