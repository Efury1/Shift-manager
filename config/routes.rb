Rails.application.routes.draw do
  resources :shifts
  resources :organisations do
    resources :shifts, except: [:index], controller: 'organisations/shifts'
  end

  devise_for :users
  get 'pages/about'
  root 'pages#home'

  resources :organisations do
      get 'join', to: 'organisations#join'
      get 'leave', to: 'organisations#leave'
  end
  
  get "password/reset", to: "password_resets#new"
  post "password/reset", to: "password_resets#create"
  # Seperate routes to handle reset itself
  # patch method that will handle edit
  get "password/reset/edit", to: "password_resets#new"
  patch "password/reset/edit", to: "password_resets#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
