Rails.application.routes.draw do


  get '/home' => 'pages#home'

  get '/women' => 'pages#women'

  get '/man' => 'pages#man'

  namespace :user do
	  resources :basket do 
	  	resources :items_basket
		end
	end  

  namespace :user do
	  resources :order do
	  	resources :items_paid
  	end
	end

	resources :product

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "pages#index"
end
