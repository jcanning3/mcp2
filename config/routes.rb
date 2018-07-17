Rails.application.routes.draw do
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
  root to: 'visitors#index'
end
