Rails.application.routes.draw do
  root to: 'pages#home'

  get "/team" => "pages#team"
  get "/contact" => "pages#join_us"

  resources :products

  # ce qui suit peut être remplacé autmatiquement par resources :products et pour limiter les possibilités resources :products, only: [:new, :create, :index, :show]
  # Real action routes
  #get "/products" => "products#index"
  #get "/products/:id" => "products#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Create action routes
  #get "/products/new" => "products#new"
  #post "products" => "products#create"

  # Update action routes
  #get "/products/:id/edit" => "products#edit"
  #patch "products/:id" => "products#update"

  # Delete action routes
  #delete "products/:id" => "products#destroy"
end
