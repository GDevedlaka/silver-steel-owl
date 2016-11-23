Rails.application.routes.draw do
  devise_for :businesses
  devise_for :customers
  resources :businesses, except: :destroy do
    resources :bookings, except: [:new, :edit, :show]
  end
  root to: 'pages#home'
end
