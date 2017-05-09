Rails.application.routes.draw do

  get 'products/index'

  get 'products/show'

  devise_for :users
  resources :bazars, :profiles, :homepages, :products

  root 'homepages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
