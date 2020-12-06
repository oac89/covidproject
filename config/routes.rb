Rails.application.routes.draw do
  resources :alerts
  resources :weekdays, only: [:show, :index]
  resources :locations, only: [:show, :index]
  resources :users, except: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
