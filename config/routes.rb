Rails.application.routes.draw do
  get 'sessions/new'
    # 顧客ページ
 namespace :admin do
#   resources :users, only:[:new, :index, :show, :edit, :update]
  resources :users
  # get '/users' => 'user#index'
  # get '/users/my_page' => 'user#show'
  # get '/users/edit' => 'user#edit'
  # patch '/users' => 'user#update'
  # get '/users/unsubscribe' => 'user#unsubscribe'
  # patch '/users/withdraw' => 'user#withdraw'
end


  devise_for :admins
  root to: 'homes#top'
  # root to: 'events#index'
  resources :events
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
