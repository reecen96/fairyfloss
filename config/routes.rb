Rails.application.routes.draw do



#CRUD

#home screen/page - redirect to when we log in
root to: 'pages#home'
#Login/logout routes
get '/login' => 'session#new'   #show login form
post '/login'=> 'session#create' #formsubmits to here, performs login, redirects

delete '/login'=> 'session#destroy' #logout link goes here, redirect

post '/houses/:id' => 'houses#apply'
post '/dashboard' => 'dashboard#edit', as: 'dashboard_path'

#       THE BELLOW IS WHAT IS IN RESOURCES :USERS
#       users GET    /users(.:format)          users#index
#       POST   /users(.:format)          users#create
#       new_user GET    /users/new(.:format)      users#new
#       edit_user GET    /users/:id/edit(.:format) users#edit
#       user GET    /users/:id(.:format)      users#show
#       PATCH  /users/:id(.:format)      users#update
#       PUT    /users/:id(.:format)      users#update
#       DELETE /users/:id(.:format)      users#destroy
resources :users

#created
resources :applications

#created
resources :houses
get '/users/search/search' => 'users#search', as: 'users_search'
get '/houses/search/search' => 'houses#search', as: 'houses_search'
get '/transport/:id' => 'transport#show', as: 'transport_show'
get '/suburbs/:id' => 'suburbs#show'

get '/apply' => 'apply#new'
post '/apply/:id' => 'apply#prepare', as: 'house_apply'

get '/dashboard' => 'dashboard#show'
get '/dashboard/message' => 'dashboard#message'

end
