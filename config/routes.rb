Rails.application.routes.draw do
  resources :alerts, only: [:show, :index, :new, :create]
  resources :weekdays, only: [:show, :index]
  resources :locations, only: [:show, :index]
  resources :users, only: [:show, :new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
