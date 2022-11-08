Rails.application.routes.draw do
  resources :posts
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :mentions, only: [:index]
  resources :users
end
