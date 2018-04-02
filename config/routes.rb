Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # Routes from project
  resource :projects
  # routes from proposals
  resource :proposals, except: :destroy
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
