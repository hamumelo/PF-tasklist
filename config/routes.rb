Rails.application.routes.draw do
  get 'blogs/index'
  # root to: 'tasks#index'
  root to: 'blogs#index'
  resources :blogs

  resources :tasks
end
