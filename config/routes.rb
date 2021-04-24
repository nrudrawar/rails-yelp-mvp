Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'restaurants', to: 'restaurants#index'
  # post 'restaurants', to: 'restaurants#create'

  # get 'restaruants/new', to: 'restaurants#new', as: :new_restaurant
  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  resources :restaurants, only: [:create, :index, :new, :show] do
    resources :reviews, only: [ :new, :create ]
  end
end

