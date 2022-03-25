Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/projects", to: "projects#index"
  post "/todos", to: "todos#create"
  patch "/projects/:project_id/todos/:todo_id", to: "todos#update"
end
