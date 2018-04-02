Rails.application.routes.draw do
  devise_for :users
  # root is a home page controlled by PagesController
  root to: 'pages#home'

  # Routes from project
  resources :projects

  # routes from proposals
  resources :proposals, except: :destroy
end
