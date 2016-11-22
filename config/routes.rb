Rails.application.routes.draw do
  devise_for :businesses
  devise_for :customers
  resources :bookings
  resources :businesses, except: :destroy
  root to: 'pages#home'
end
