# frozen_string_literal: true

Rails.application.routes.draw do
  delete 'inventory_foods/:id/destroy/:food_id', to: 'inventory_foods#destroy'
  get 'inventory_foods/:id/new', to: 'inventory_foods#new'
  post 'inventory_foods/:id/create', to: 'inventory_foods#create'
  get 'user/index'
  get 'user/show'
  resources :inventories, only: %i[index show new create destroy]
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'user#index'
end
