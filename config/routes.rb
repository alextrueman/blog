Rails.application.routes.draw do
  resources :articles
  resources :drivers

  resources :driversandcars
  resources :cars
  root 'welcome#index'
end
