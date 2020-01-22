Rails.application.routes.draw do
  resources :articles
  resources :drivers

  resources :cars
  root 'welcome#index'
end
