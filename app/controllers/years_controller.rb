class YearsController < ApplicationController

  def show

  end

  def animate_year
    respond_to do |format|
      format.js { render :animate_year }
    end
  end
end
