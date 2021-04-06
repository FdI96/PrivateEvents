Rails.application.routes.draw do
  root 'events#index'
  get 'user/signin', to: 'users#in'

  resources :users, only: [ :new, :create, :show ]
  resources :attendees
  resources :events
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
