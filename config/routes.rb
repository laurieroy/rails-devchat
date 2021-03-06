Rails.application.routes.draw do
  
  resources :sessions, only: [:create] 
  resources :users
  resources :messages, only: [:destroy]
  resources :channels, only: [:show, :index] do
    resources :messages, only: [:create] 
  end
  get '/autologin', to: 'sessions#autologin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
