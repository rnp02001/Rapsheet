class AnnualStateCrimeRatesController < ApplicationController
  def index

  end


<<<<<<< HEAD

  def range_year_crime #This should be refactored into the database or a rake task. d
=======
  def range_year_crime #This should be refactored into the database or a rake task.
>>>>>>> b55524128223fb07263eb3dfd34c0fc8dd3f71f9
    range = AnnualStateCrimeRate.range_for_crime(params["crime"])
    gon.global.min = range.min
    @minimums = range.min
    gon.global.max = range.max
<<<<<<< HEAD
    gon.global.year_data = AnnualStateCrimeRate.rates_for_year_and_crime(params["form_year"], params["crime"])

=======
    @maximums = range.max
    gon.global.year_data = AnnualStateCrimeRate.rates_for_year_and_crime(params["form_year"], params["crime"])
    @states = AnnualStateCrimeRate.rates_for_year_and_crime(params["form_year"], params["crime"])
>>>>>>> b55524128223fb07263eb3dfd34c0fc8dd3f71f9
    @crimes = Crime.all
    respond_to do |format|
      format.js {render 'home/index'}
    end
  end
end
