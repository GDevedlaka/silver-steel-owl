Rails.application.routes.draw do
  devise_for :businesses
  devise_for :customers
  root to: 'pages#home'
end
