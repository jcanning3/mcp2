Rails.application.routes.draw do
  resources :festivals do
    resources :musicians
  end
  resources :payment_methods
  resources :sales_reports
  resources :vendors
  resources :ticket_categories
  resources :instructions
  resources :assignments
  resources :tasks
  resources :task_types
  resources :instruments
  resources :team_musicians
  resources :accomodations
  resources :addresses
  devise_for :users
  resources :discussions
  resources :flights
  resources :airlines
  resources :sheets
  resources :notebooks
  resources :event_teams
  resources :events
  resources :teams
  resources :locations
  resources :types
  resources :pieces
  resources :performers
  resources :performances
  resources :musicians
  resources :movements
  resources :concerts
  resources :composers
  root to: 'events#index'
end
