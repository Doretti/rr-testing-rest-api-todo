Rails.application.routes.draw do
    get 'projects', to: 'projects#index'
    patch 'projects/:project_id/todos/:id', to: 'todos#update'

    resources :projects, :todos
end
