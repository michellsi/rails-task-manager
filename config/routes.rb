Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Display the tasks / Read (all)
  get 'tasks', to: 'tasks#index', as: :tasks

  # Create a new task / Create (Step 1)
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  # Find a specific task / Read (one)
  get 'tasks/:id', to: 'tasks#show', as: :task

  # Edit the task / Update
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  # Delete a task / Delete
  delete 'tasks/:id', to: 'tasks#destroy'
end
