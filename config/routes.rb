Rails.application.routes.draw do
  resources :movies
  devise_for :users

  authenticated :user do
    root to: 'movies#landing', as: :authenticated_root
  end
  root to: redirect('/users/sign_in')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
