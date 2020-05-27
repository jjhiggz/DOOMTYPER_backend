Rails.application.routes.draw do
  resources :scores
  resources :games, only: [:index]
  resources :users, only: [:create, :show]

  post "login", to: "authentication#login" 
end
