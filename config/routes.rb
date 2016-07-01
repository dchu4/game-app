Rails.application.routes.draw do
  devise_for :users
  root to: 'characters#index'

  get '/characters' => 'characters#index'

  get '/characters/new' => 'characters#new'
  post '/characters' => 'characters#create'

  get '/characters/:id' => 'characters#show'

  delete '/characters/:id' => 'characters#destroy'
#############################################

  get '/items' => 'items#index'
  get '/items/:id' => 'items#show'

  get '/items/:id/edit' => 'items#edit'
  patch '/items/:id' => 'items#update'

#############################################

  get '/boards' => 'boards#index'
  get '/boards/:id' => 'boards#show'

  namespace :api do
    namespace :v1 do
      get '/characters' => 'characters#index'
      post '/characters' => 'characters#create'
      get '/characters/:id' => 'characters#show'
    end
  end
end
