class AnnualStateCrimeRatesController < ApplicationController
  def index

  end


  def range_year_crime #This should be refactored into the database or a rake task.
    range = AnnualStateCrimeRate.range_for_crime(params["id"])
    gon.global.min = range.min
    gon.global.max = range.max
    gon.global.year_data = AnnualStateCrimeRate.rates_for_year_and_crime(params["form_year"], params["id"])
    @crimes = Crime.all
    respond_to do |format|
      format.js { render 'home/index' }
    end
  end



end
