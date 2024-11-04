Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  root "users#index"

  # resources :users
  get "/users",  to: "users#index"
  get "/users/new", to: "users#new", as: :new_user
  post "/users", to: "users#create"
  delete "/users/:id", to: "users#destroy"
  get "users/:id", to: "users#show", as: :user
  get "users/:id/edit", to: "users#edit", as: :edit_user
  patch "users/:id/", to: "users#update"
  get "user/login", to: "users#login"
  post "user/login", to: "users#check_login_credencials"

  # games routes

  get "/game/start/:id", to: "games#index"
  post "/game/check/:index", to: "games#check", as: :check_game
  post "/game/reset", to: "games#reset", as: :game_reset

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"'
end
