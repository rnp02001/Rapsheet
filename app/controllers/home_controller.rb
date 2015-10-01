class HomeController < ApplicationController

  def index

  
    @crimes = Crime.all
    gon.rate = AnnualStateCrimeRate.limit(10)
  end

end
