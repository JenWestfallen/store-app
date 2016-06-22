Rails.application.routes.draw do

  devise_for :users
  root to: 'products#index'
  get '/products' => 'products#index'

  get '/products/random' => 'products#random'

  get '/products/new' => 'products#new'
  post '/products/' => 'products#create'
  get '/products/:id' => 'products#show'


  post '/orders' => 'orders#create'
  get '/orders/:id' => 'orders#show'
 

  get '/products/:id/edit' => 'products#edit'
  patch '/products/:id' => 'products#update'

  delete '/products/:id' => 'products#destroy'

  get '/' => 'suppliers#index'
  get '/index' => 'suppliers#index'

  get '/suppliers/new' => 'suppliers#new'
  post '/suppliers/' => 'suppliers#create'

  get '/suppliers/:id' => 'suppliers#show'

  get '/suppliers/:id/edit' => 'suppliers#edit'
  patch '/suppliers/:id' => 'suppliers#update'

  delete '/products/:id' => 'products#destroy'

  get '/images' => 'images#show_images'

  get '/carted_products' => 'carted_products#index'
  post '/carted_products' => 'carted_products#create'

  get '/carted_products/:id' => 'carted_products#show'
  delete '/carted_products/:id' => 'carted_products#destroy'

end
