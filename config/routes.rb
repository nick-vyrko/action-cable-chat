Rails.application.routes.draw do
  devise_for :users

  resources :chatrooms, only: %i(index show new create)

  root "chatrooms#index"
end
