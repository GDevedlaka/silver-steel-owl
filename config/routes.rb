Rails.application.routes.draw do
  devise_for :businesses
  resources :businesses, except: :destroy do
    resources :bookings, except: [:new, :edit, :show]
  end
  root to: 'pages#home'
  #business_root to: ''
end
