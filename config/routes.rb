Rails.application.routes.draw do
  resources :reviews
  resources :projects
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
end
