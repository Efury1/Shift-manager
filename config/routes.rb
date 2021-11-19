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
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
