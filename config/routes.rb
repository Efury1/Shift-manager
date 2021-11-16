Rails.application.routes.draw do
  resources :shifts
  resources :organisations
  devise_for :users
  get 'pages/about'
  root 'pages#home'

  #resources :organisation do
    #organisation_id do
      #get 'join'
    #end
  #end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
