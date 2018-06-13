Rails.application.routes.draw do
  resources :appointments
  resources :calendars
  devise_for :users

  root :to => 'layouts#home'
end
