Rails.application.routes.draw do
  resources :templates
  resources :milestones
  resources :projects, only: [:index, :show]
  resources :users

  post '/projects' => 'projects#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
