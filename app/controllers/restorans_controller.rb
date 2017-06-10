class RestoransController < ApplicationController
  def index
  	@restorans = Restoran.all
  end

  def show
  end
end
