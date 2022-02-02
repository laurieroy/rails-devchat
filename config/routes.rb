Rails.application.routes.draw do
  resources :messages, only: [:create, :destroy]
  resources :channels, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
