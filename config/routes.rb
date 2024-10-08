Rails.application.routes.draw do
  root 'home#index'
  get '/home', to: 'home#index'

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"

  resources :navigation, only: [:index]
  get '/products', to: 'navigation#products'
  get '/services', to: 'navigation#services'
  get '/outlets', to: 'navigation#outlets'
  get '/contact-us', to: 'navigation#contact_us'

end
