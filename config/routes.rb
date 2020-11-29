Rails.application.routes.draw do
  resources :properties
  devise_for :hosts
  root to: "properties#index"
end
