# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  get 'invoices/index'
  # get 'invoices/show'
  # get 'invoices/new'
  # get 'invoices/create'
  root 'inventorys#index'
  # get 'inventory/show'
  # get 'inventory/new'
  # get 'inventory/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :inventorys do
    resources :items do
      resources :invoices
    end
  end
end
