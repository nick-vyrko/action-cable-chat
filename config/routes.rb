Rails.application.routes.draw do
  devise_for :users

  resources :chatrooms, only: %i(index show)

  root "chatrooms#index"
end
