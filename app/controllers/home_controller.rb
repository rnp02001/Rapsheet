class HomeController < ApplicationController
  def index
    gon.rate = AnnualStateCrimeRate.limit(10)
  end
end
