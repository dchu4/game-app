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
end
