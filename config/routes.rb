Rails.application.routes.draw do
  resources :wins
  devise_for :users
  root 'pages#index'
  get "about" => "pages#about" # about_path

end
