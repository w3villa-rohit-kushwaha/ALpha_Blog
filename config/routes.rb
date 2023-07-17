Rails.application.routes.draw do
  resources :posts
  resources :users, only: [:new, :create]
  get 'login', to: 'users#login'
  post 'authenticate', to: 'users#authenticate'
  delete 'logout', to: 'users#logout'
end
