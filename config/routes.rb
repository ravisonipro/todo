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


end

