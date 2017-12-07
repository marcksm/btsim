Rails.application.routes.draw do
  get 'users/new'

  get 'users/edit'

  get 'users/delete'

  get 'users/list'

  get 'login', to: 'session#new'

  post 'login', to: 'session#create'

  get 'dashboard', to: 'dashboard#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
