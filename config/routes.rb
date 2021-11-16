Rails.application.routes.draw do

  resources :locations
  resources :events 
  resources :tasks
  devise_for :users, :controllers => { registrations: 'users/registrations' }
  
  resources :users do
    member { patch :activate }
    member { patch :deactivate }
  end
  
  

  root 'welcome#index'
  get "about_us", to: "welcome#about_us"
  get "contact_us", to: "welcome#contact_us"
  get "weather_forcast", to: "welcome#weather_forcast"


end

