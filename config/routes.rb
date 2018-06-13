Rails.application.routes.draw do
  resources :appointments
  resources :calendars
  resources :time_slots
  devise_for :users

  root :to => 'layouts#home'
end
