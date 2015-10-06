Rails.application.routes.draw do
  root 'home#index'

  devise_for :users, controllers: { sessions: 'users/sessions' }

  resources :annual_state_crime_rates

  post 'range_year_crime', to: 'annual_state_crime_rates#range_year_crime'

  resources :years

  resources :crimes

  resources :states

  resources :comments, only: [:new, :create]

  resources :users, :only => [:index, :show, :update]

end
