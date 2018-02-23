Rails.application.routes.draw do
  devise_for :users
  root to: 'devices#index'

  resources :devices
  resources :users
  resources :bookings
end
