class CrimesController < ApplicationController

  def rate #This should be refactored into the database or a rake task.
    range = Crime.range_for_crime(params["id"])
    binding.pry
    gon.min = range.min
    gon.max = range.max
  end


end
