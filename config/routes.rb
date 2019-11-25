Rails.application.routes.draw do
  get 'users/show'
  resources :users, only: [:index]

  # ログイン、アカウント編集後、任意のページに推移させるための記述
  devise_for :users,controllers: {
    registrations: 'users/registrations'
  }
  resources :quiets do
    resources :comments
  end
  root 'quiets#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
