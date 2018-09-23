Rails.application.routes.draw do

  namespace :admins do
    resources :products do
      resources :discs do
        resources :tunes
      end
    end
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

  get 'admins/top' => 'admins#top', as: :admins_top
  get 'admins/' => 'admins#index', as: :admins

  resource :admins do
      resources :users, only: [:index, :edit, :update, :destroy]
  end

  resources :carts
  resources :users
  resources :destinations
  resources :products do
    collection do
      get :search
    end
  end
  resources :purchase_singles
  resources :purchases
  resources :unsubscribes


  # resources :discs
  resources :tunes
  resources :labels
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
