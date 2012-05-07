Ineed::Application.routes.draw do
  

  resources :users
  resources :pages
  resources :posts
  resources :web_services
  
 match "/" => "pages#home"
 match "/dashboard" => "pages#dashbord"
 
 #rest services
 #users
 
 match "rest/user/signup" => "users#create"
 match "rest/user/update" => "user#update"
 match "rest/user/deactivate" => "user#destroy"
 match "rest/user/login" => "user#login"
 
 
 match "rest/user/new" => "web_services#user_create"
 
 
 #post rest services
  
 match "rest/posts/create" => "posts#create"
 match "rest/posts/related" => "posts#related"
 match "rest/posts/needs" => "posts#needs"
 match "rest/posts/provides" => "posts#provides"
 
 
  
end
