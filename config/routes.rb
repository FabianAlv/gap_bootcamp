Rails.application.routes.draw do
  resources :reservations
  resources :properties
  devise_for :hosts
  root to: "properties#index"
end
