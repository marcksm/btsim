Rails.application.routes.draw do

  get 'users/edit'

  get 'users/delete'

  get 'users/list'

  get 'login', to: 'session#new'

  post 'login', to: 'session#create'

  get 'signup', to: 'users#new'

  post 'signup', to: 'users#create'

  get 'dashboard', to: 'dashboard#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
