Rails.application.routes.draw do
  
  resources :aplications
  # resources :reviews
  # project/id/new
  # proj
  resources :projects do 
    resources :reviews, except: [:show, :index]
    resources :employers

  end

  # get 'welcome/index'
  root 'welcome#index'

  resources :messages, only: [:index, :show, :create] do
    get '/chat/:user_id', action: :chat, as: 'chat', on: :collection
  end


  devise_for :developers, path: 'developers', :controllers => { registrations: 'developers/registrations' }
  devise_for :employers, path: 'employers', :controllers => { registrations: 'employers/registrations' }
  get '/developers', to: 'developers#index'
  get '/developers/:id', to: 'developers#show', as: 'developer'
  

  get '/employers', to: 'employers#index'
  get '/employers/:id', to: 'employers#show', as: 'employer'
  root 'welcome#index'
  get '/dashboard', to: 'welcome#dashboard'
  get '/login', to: 'welcome#login'
end
