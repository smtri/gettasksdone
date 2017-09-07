Rails.application.routes.draw do
  get 'projects/index'

  get 'projects/show'

  get 'projects/new'

  get 'projects/edit'

  get 'projects/create'

  get 'projects/update'

  get 'projects/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :projects
end
