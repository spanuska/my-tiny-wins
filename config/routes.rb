Rails.application.routes.draw do
  devise_for :users
  root 'pages#index'
  get "about" => "pages#about" # about_path

end
