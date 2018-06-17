Rails.application.routes.draw do
  resources :time_slots do 
    resources :appointments
  end

  devise_for :users

  root :to => 'layouts#home'
end
