class HomeController < ApplicationController

  def index
    @crimes = Crime.all
    binding.pry
  end

end
