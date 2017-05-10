class ProductsController < ApplicationController
  def index
  end

  def show
  end

  def new
    if user_signed_in?
      @product = Product.new
    else
      redirect_to new_post_registration_path
    end
  end

  def create
    if user_signed_in?
      @product = Product.new(product_params)
      @product.save
      redirect_to profiles_path
    else 
      redirect_to new_user_registration_path, notice: "Вы не вошли на сайт"
    end
  end

  def destroy
  	if user_signed_in?
	    @product = Product.find(params[:id])
  	 	if @product.user == current_user
  	      @product.destroy
  	      redirect_to :back
  	    else
  	      redirect_to new_user_registration_path
  	    end
    	else
    		redirect_to new_user_registration_path
  	end
  end

  def edit 
    if user_signed_in?
     @product = Product.find(params[:id])
      if @product.user == current_user
        @product = Product.find(params[:id])  
      else 
        redirect_to new_user_registration_path
      end
    end
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
      redirect_to profiles_path
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :image, :desc, :phone, :color_product, :size, :user_id, :container_id)
  end
end
