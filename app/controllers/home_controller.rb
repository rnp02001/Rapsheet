class HomeController < ApplicationController

  def index
    gon.rate = AnnualStateCrimeRate.limit(10)
    @comment = Comment.new
    @comments = Comment.all
    @crimes = Crime.all
  end

end
