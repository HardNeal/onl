Rails.application.routes.draw do

  ActiveAdmin.routes(self)
  devise_for :users
  resources :profiles, :homepages

  root :to => 'homepages#index'

  resources :bazars do 
    resources :podrazdels do
    	resources :containers do 
    	 resources :products
      end 
  	end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end