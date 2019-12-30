Rails.application.routes.draw do
  devise_for :users

  root 'homes#index'
  get '/homes/index', to: 'homes#index'
  resources :homes

  root to:'items#index'
  resources :items
  resources :users, only: :show
  

end
