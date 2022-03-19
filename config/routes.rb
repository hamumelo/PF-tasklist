Rails.application.routes.draw do


    # 管理者ページ
 namespace :admin do
  resources :users
end

  devise_for :admins, controllers: {
  sessions:      'admin/admins/sessions',
#   passwords:     'admin/admins/passwords',
  # registrations: 'admin/registrations'
}

  root to: 'homes#index'

# 社員ページ

 scope module: :public do
#   resources :users
  resources :events
end

  devise_for :users, controllers: {
  sessions:      'public/users/sessions'
#   passwords:     'public/users/passwords',
#   registrations: 'public/users/registrations'
}



end