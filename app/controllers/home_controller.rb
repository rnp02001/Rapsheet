class HomeController < ApplicationController

  def index
    @comments = Comment.all
    @crimes = Crime.all
  end

end
