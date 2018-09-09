Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  devise_for :developers, path: 'developers', module: "developers"
  # eg. http://localhost:3000/users/sign_in
  devise_for :employers, path: 'employers', module: "employers"
  # eg. http://localhost:3000/admins/sign_in
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
