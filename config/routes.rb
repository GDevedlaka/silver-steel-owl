Rails.application.routes.draw do
  devise_for :businesses
  resources :businesses, except: [:destroy, :index] do
    resources :services, only: [:create, :destroy]
    resources :bookings, except: [:new, :edit]
  end
  resources :bookings, only: [] do
    resources :payments, only: [:new, :create]
  end
  root to: 'pages#home'
  #business_root to: ''
end
