Rails.application.routes.draw do
  get 'regions', to: 'regions#index'
  get 'regions/index'
  get 'regions/show/:id', to: 'regions#show'
  get 'regions/edit/:id', to: 'regions#edit'
  patch 'regions/edit/:id', to: 'regions#update'
  delete 'regions/delete/:id', to: 'regions#delete'
  get 'regions/new'
  post 'regions/new', to: 'regions#create'

  root 'countries#index'
  get 'countries', to: 'countries#index'
  get 'countries/index'
  get 'countries/show/:id', to: 'countries#show'
  get 'countries/edit/:id', to: 'countries#edit'
  patch 'countries/edit/:id', to: 'countries#update'
  delete 'countries/delete/:id', to: 'countries#delete'
  get 'countries/new'
  post 'countries/new', to: 'countries#create'
end
