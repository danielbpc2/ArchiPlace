Rails.application.routes.draw do
  # root is a home page controlled by PagesController
  root to: 'pages#home'
  #devise routes
  devise_for :users
  #if needed routes with :user_id params
  resources :user, only: [] do
  end

  # Routes from project
  resources :projects, only: [:index, :new, :create, :destroy, :show, :edit, :update] do
    resources :proposals, only: [:show, :new, :create, :edit, :update]
  end
  # routes from proposals
  resources :proposals, only: [:index]
end
