Rails.application.routes.draw do

  root to: "apps#index"

  devise_for :users
  devise_for :trainers
  resources :userbodies

  resources :trainingmenus , only: [:index, :new, :show, :create, :update, :delete]
  get '/createmenu/:id', to: 'trainingmenus#new', as: 'create_new_menu'

  resources :trainingitems
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  # devise_for :trainer, controllers: {
  #   sessions:      'trainers/sessions',
  #   passwords:     'trainers/passwords',
  #   registrations: 'trainers/registrations'
  # }

  # devise_for :users, controllers: {
  #   sessions:      'users/sessions',
  #   passwords:     'users/passwords',
  #   registrations: 'users/registrations'
  # }

end
