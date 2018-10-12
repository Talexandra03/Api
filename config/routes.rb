Rails.application.routes.draw do
  resources :articulos
  post 'user_token' => 'user_token#create'
  resources :users
  #get /user/ to :users#index
  #get /user/ :ide to :users#show
  #post /user/ to users#create
  #put /user/ :id to user#update
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end