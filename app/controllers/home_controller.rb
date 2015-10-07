class HomeController < ApplicationController

  def index
    @crimes = Crime.all

    @comment = Comment.new

    @comments = Comment.all
  end

end
