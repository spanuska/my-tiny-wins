Rails.application.routes.draw do
  get 'profile/show'

  resources :wins
  
  devise_for :users
  root 'wins#index'
  get "about" => "pages#about" # about_path
  get '/user/:id' => 'profile#show'

end
