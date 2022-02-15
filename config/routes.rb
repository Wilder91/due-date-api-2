Rails.application.routes.draw do
  resources :templates
  resources :milestones, only: [:show, :index]
  resources :projects, only: [:index, :show]
  resources :users, only: [:index, :show]

  post '/projects' => 'projects#create'
  post '/users' => 'users#create'
  
  get '/users/:id/projects' => 'users#projects'
  get 'users/:id/milestones' => 'users#milestones'
  get 'users/:id/projects' => 'users#projects'
  delete '/milestones/:id' => 'milestones#delete'
  delete '/projects/:id' => 'projects#delete'
  get '/projects/:id/milestones' => 'milestones#project_index'
  post  '/milestones' => 'milestones#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
