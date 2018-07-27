Rails.application.routes.draw do
  # get 'users/index'
  # get 'users/new'
  # get 'users/create'
  # get 'users/show'
  # # get 'users/edit'
  # get 'users/:id', to: 'users#show'
  resources :users #, only: [:index,:show,:new]
  root 'users#index'
  dfugukfdikfdgjdfkjkj
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
