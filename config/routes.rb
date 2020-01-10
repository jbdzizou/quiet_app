Rails.application.routes.draw do
  resources :users, only: [:index]
  resources :comments, only: [:index]

  # ログイン、アカウント編集後、任意のページに推移させるための記述
  devise_for :users,controllers: {
    registrations: 'users/registrations'
  }
  resources :quiets do
    resources :comments
    resources :infos
  end
  root 'quiets#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
