Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  # root is a home page controlled by PagesController
  resources :user, only: [] do
  # Routes from project nested in user
    resources :projects, only: [:show, :new, :create, :edit, :update, :destroy]
  # routes from proposals nested in user
  end

  # Routes from project
  resources :projects, only: [:index] do
    resources :proposals, only: [:show, :new, :create, :edit, :update]
  end
  # routes from proposals
  resources :proposals, only: [:index]
end
