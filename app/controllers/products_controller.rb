class ProductsController < ApplicationController
    before_action :set_bazar
    


  def index
    if params[:search]
        @products = Product.search(params[:search]).order("created_at DESC")
      else
        @products = Product.all.order('created_at DESC')
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    if user_signed_in?
      @product = Product.new
    else
      redirect_to new_Product_registration_path
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

  def set_bazar
    @bazar = Bazar.find(params[:bazar_id])
    @podrazdel = Podrazdel.find(params[:podrazdel_id])
    @container = Container.find(params[:container_id])
  end

  def product_params
    params.require(:product).permit(:name, :price, :image, :desc, :phone, :color_product, :size, :user_id, :container_id)
  end
end
