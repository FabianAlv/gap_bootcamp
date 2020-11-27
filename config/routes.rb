Rails.application.routes.draw do
  devise_for :hosts
  root to: "home#index"
end
