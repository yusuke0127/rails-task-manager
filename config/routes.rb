Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Create task
  # gets the form for adding new task(needs to be before show to work)
  get '/tasks/new', to: 'tasks#new', as: :new_task
  # sends the form to /tasks
  post '/tasks', to: 'tasks#create', as: :tasks

  # lists all the tasks
  get '/tasks', to: 'tasks#index'
  # list a task
  get '/tasks/:id', to: 'tasks#show', as: :task

  # update a task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  # delete task
  delete 'tasks/:id', to: 'tasks#destroy'
end
