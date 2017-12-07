Rails.application.routes.draw do
  get 'session/new'

  get 'session/logout'

  get 'users/new'

  get 'users/edit'

  get 'users/delete'

  get 'users/list'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
