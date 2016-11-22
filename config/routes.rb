Rails.application.routes.draw do
  devise_for :businesses
  devise_for :customers
  resources :bookings
  root to: 'pages#home'
end
