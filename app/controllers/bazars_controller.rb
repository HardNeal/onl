class BazarsController < ApplicationController
	def index
	 @bazars = Bazar.all
	end

	def show
	 @bazar = Bazar.find(params[:id])
	end

	def new
		if user_signed_in?
		  @bazar = Bazar.new
		else
		  redirect_to new_post_registration_path
		end
	end

	def create
		if user_signed_in?
		  @bazar = Bazar.new(bazar_params)
		  @bazar.save
		  redirect_to bazars_path
		else 
		  redirect_to new_user_registration_path, notice: "Вы не вошли на сайт"
		end
	end

	def edit 
     @bazar = Bazar.find(params[:id])
	end

  	def update
	    @bazar = Bazar.find(params[:id])
	    @bazar.update(bazar_params)
	      redirect_to bazars_path
  	end

	private 

  def bazar_params
	  params.require(:bazar).permit(:name, :image)
	end
end
