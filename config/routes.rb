Rails.application.routes.draw do
  root 'pages#home'
  get 'pages/home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :drivers, :passengers 
  resources :trips, except: [:index]

  # Custom Routes
  patch '/drivers/:id/available', to: 'drivers#available', as: 'driver_available'
  patch '/drivers/:id/active', to: 'drivers#active', as: 'driver_active'
  patch '/passengers/:id/active', to: 'passengers#active', as: 'passenger_active'
  patch '/passengers/:id/new_trip', to: 'passengers#new_trip', as: 'passenger_new_trip'
end
