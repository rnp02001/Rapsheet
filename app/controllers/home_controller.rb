class HomeController < ApplicationController

  def index
    @crimes = Crime.all
  end

end
