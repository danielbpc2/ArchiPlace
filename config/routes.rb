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
  patch '/projects/:id/change-status', to: "projects#change_status", as: "change_project_status"
  #route for current user projects
  get '/myprojects', to: "projects#myindex", as: "my_projects_index"
  # routes from proposals
  resources :proposals, only: [:index]
  # Route for current user proposals
  get '/myproposals', to: "proposals#myindex", as: "my_proposals_index"
end
