Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
   
  
  get '/team', to: 'statique_page#team'
  get '/contact', to: 'statique_page#contact'
  
  get '/welcome/:first_name', to: 'dynamique_page#welcome'
  get '/home', to: 'statique_page#home'
  get '/gossips/:id', to: 'statique_page#one_gossip'
  get '/users/:id', to: 'statique_page#user_gossip'
  resources :gossips
  resources :users 

  # config/routes.rb

  root 'statique_page#home' # La route root est définie pour afficher la page d'accueil
  # Ajoute ici les autres routes nécessaires, comme celles pour /team, /contact, etc.

end
