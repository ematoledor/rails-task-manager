Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #List task and task details.
  get "tasks", to: "tasks#index" 
  #Request the creation form and post params to create a new one, HAS TO GO BEFORE show.
  get "tasks/new",  to: "tasks#new", as: :new_task
  get "tasks/:id", to: "tasks#show", as: :task

  post "tasks", to: "tasks#create" 

  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"

  delete "tasks/:id", to: "tasks#destroy"

end
