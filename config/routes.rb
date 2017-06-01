Rails.application.routes.draw do

  ActiveAdmin.routes(self)
  devise_for :users
  resources :profiles, :homepages, :forms

  root :to => 'homepages#index'
  get 'products/search' => 'products#search', as: 'search_products'

  resources :bazars do 
    resources :podrazdels do
    	resources :containers do 
    	 resources :products
      end 
  	end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end