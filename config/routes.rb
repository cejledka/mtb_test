Rails.application.routes.draw do
  root 'countries#index'
  get 'countries', to: 'countries#index'
  get 'countries/index'
  get 'countries/show/:id', to: 'countries#show'
  get 'countries/edit/:id', to: 'countries#edit'
  patch 'countries/edit/:id', to: 'countries#update'
  delete 'countries/delete/:id', to: 'countries#delete'
  get 'countries/new'
  post 'countries/new', to: 'countries#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
