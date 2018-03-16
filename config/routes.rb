Rails.application.routes.draw do

  root "posts#new"

  devise_for :users, path:  "", path_names: {sign_in: "sign_in", sign_up: "sign_up"}

  resources :posts, except: [:update, :destroy, :edit]
  resources :comments, only: :create

end
