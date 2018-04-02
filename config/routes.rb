Rails.application.routes.draw do
  devise_for :users
  # root is a home page controlled by PagesController
  root to: 'pages#home'

  # Routes from project
  resource :projects

  # routes from proposals
  resource :proposals, except: :destroy
end
