Rails.application.routes.draw do
  devise_for :users
  root to: 'devices#index'

  resources :devices do
    resources :bookings
  end
end
