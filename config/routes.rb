Rails.application.routes.draw do
  # get '/user', to: 'users#index'
  resources :homes
  root 'homes#index'
  get '/homes/index', to: 'homes#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
