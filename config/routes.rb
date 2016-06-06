Rails.application.routes.draw do
  # get 'profile/show'

  resources :wins
  get '/users/:id' => 'profile#show'
  
  devise_for :users
  root 'wins#index'
  get "about" => "pages#about" # about_path

end
