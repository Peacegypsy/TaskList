Rails.application.routes.draw do
  root 'tasks#index'
  resources :tasks 
  #
  # get '/tasks/', to: 'tasks#index', as: 'tasks'
  #
  # get '/tasks/new', to: 'tasks#new', as: 'new_task'
  #
  # post '/tasks', to: 'task#create'
  #
  # get '/tasks/:id/edit',to: 'tasks#edit', as: 'edit_task'
  #
  # get '/tasks/:id', to: 'task#show', as: 'task'
  #
  # patch 'tasks/:id', to: 'tasks#update'
  # put '/tasks/:id', to: 'tasks#update'
  #
  # delete '/tasks/:id', to: 'tasks#destroy'
end