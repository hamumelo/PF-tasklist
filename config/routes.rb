Rails.application.routes.draw do
  devise_for :admins
  root to: 'homes#top'
  get 'events/index'
  get 'blogs/index'
  # root to: 'tasks#index'
  # root to: 'events#index'
  resources :events

  resources :tasks
end
