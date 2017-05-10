Rails.application.routes.draw do
  devise_for :users
  resources :bazars, :profiles, :homepages, :products

  root :to => 'homepages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
