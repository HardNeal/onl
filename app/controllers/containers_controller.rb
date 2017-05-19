class ContainersController < ApplicationController
	before_action :set_bazar
  def index
    if params[:search]
        @containers = Container.search(params[:search]).order("created_at DESC")
      else
        @containers = Container.all.order('created_at DESC')
    end
  end

  def show
  	@container = Container.find(params[:id])
  end

  def set_bazar
  	@bazar = Bazar.find(params[:bazar_id])
  	@podrazdel = Podrazdel.find(params[:podrazdel_id])
  end
end
