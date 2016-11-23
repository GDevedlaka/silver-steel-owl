Rails.application.routes.draw do
  devise_for :businesses
  devise_for :customers
  resources :bookings
  resources :businesses, except: :destroy do
    resources :bookings
  end
  root to: 'pages#home'
end
