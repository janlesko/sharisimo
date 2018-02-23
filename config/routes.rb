Rails.application.routes.draw do
  get 'dashboard/show'

  devise_for :users
  root to: 'devices#index'

  resources :devices do
    resources :bookings
  end
  resources :dashboards, only: [:show]
end
