Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top", as: "top"
  get "homes/about" => "homes#about", as: "about"
  resources :books, only: [:index, :create, :show, :edit] 
  resources :users, only: [:top, :index, :show, :edit]

end
