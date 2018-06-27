Rails.application.routes.draw do
  root 'camp_sites#list'

  resources :camp_sites

  resources :cities

  resources :regions

  resources :countries
end
