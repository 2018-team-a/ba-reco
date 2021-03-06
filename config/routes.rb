Rails.application.routes.draw do

  get "carts/cart_ccc" => "carts#cart_ccc", as: "ccc"
  post "carts/:user_id/:total_price" => "carts#cart_last", as: "last"
  post "carts/purchase_singles" => "carts#cart_single", as:"single"

  namespace :admins do
    resources :users, only: [:index, :edit, :update, :destroy]
    resources :products do
      resources :discs do
        resources :tunes
      end
    end

    resources :discs
    resources :artists
    resources :purchases
    resources :admins
    resources :genres
    resources :labels
  end

  devise_for :admins, controllers: {
      sessions:      'admins/sessions',
      passwords:     'admins/passwords',
      registrations: 'admins/registrations'
    }

  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
    }

  post "products/:product_id/carts/" => "carts#add_carts", as: "sss"
  root to: 'products#index'

  get 'admins/' => 'admins#index', as: :admins

  resources :users, only: [:show, :edit, :destroy, :update]
  resources :carts, only: [:index, :destroy, :update]
  resources :purchases
  resources :destinations
  resources :products do
    collection do
      get :search
    end
  end
  resources :purchase_singles
  resources :unsubscribes
  resources :tunes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
