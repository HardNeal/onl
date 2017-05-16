class PodrazdelsController < ApplicationController
  before_action :set_bazar

  def show
  	@podrazdel = Podrazdel.find(params[:id])
  end

  def set_bazar
  	@bazar = Bazar.find(params[:bazar_id])
  end
end
