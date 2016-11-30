Rails.application.routes.draw do
  devise_for :businesses, controllers: { registrations: 'registrations', sessions: 'sessions' }
  resources :businesses, except: [:destroy, :index] do
    resources :services, only: [:create, :destroy]
    resources :bookings, except: [:new, :edit]
  end
  resources :bookings, only: [] do
    resources :payments, only: [:new, :create]
  end

  constraints subdomain: ['', 'www'] do
    root to: 'pages#home', as: :home
  end

  root to: 'businesses#show'
end
