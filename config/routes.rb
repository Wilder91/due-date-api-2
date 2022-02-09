Rails.application.routes.draw do
  resources :templates
  resources :milestones, only: [:show]
  resources :projects, only: [:index, :show]
  resources :users, only: [:index, :show]

  post '/projects' => 'projects#create'
  post '/users' => 'users#create'
 
  delete '/projects/:id' => 'projects#delete'
  get '/projects/:id/milestones' => 'milestones#project_index'
  post '/projects/:id/milestones' => 'milestones#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
