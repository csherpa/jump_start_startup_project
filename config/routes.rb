Rails.application.routes.draw do
  # resources :reviews
  resources :messages
  resources :projects do 
    resources :reviews, except: [:show, :index]
  end
  # get 'welcome/index'
  root 'welcome#index'
  devise_for :developers, path: 'developers', :controllers => { registrations: 'developers/registrations' }
  # eg. http://localhost:3000/users/sign_in
  devise_for :employers, path: 'employers', :controllers => { registrations: 'employers/registrations' }
  # eg. http://localhost:3000/admins/sign_in
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  get '/developers', to: 'developers#index'
  get '/developers/:id', to: 'developers#show', as: 'developer'

  get '/employers', to: 'employers#index'
  get '/employers/:id', to: 'employers#show', as: 'employer'
end
