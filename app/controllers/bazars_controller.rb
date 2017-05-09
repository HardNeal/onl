class BazarsController < ApplicationController
  def index
  	@bazars = Bazar.all
  end

  def show
  end

	def create
		@bazar = Bazar.find(params[:id])
		@bazar = @post.comments.create(bazar_params)
		# @bazar.user_id = current_user.id
		@bazar.save
	end

	private 

  def bazar_params
	  params.require(:bazar).permit(:name, :image)
	end
end
