Rails.application.routes.draw do
  resources :properties
  devise_for :hosts
  root to: "home#index"
end
