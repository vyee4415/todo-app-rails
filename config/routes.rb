Rails.application.routes.draw do

  get 'list/index'
  get "list/new"
  get "list/create"
  get "list/edit/:id" =>"list#edit"
  get "list/update/:id" =>"list#update"
  get "list/:id" => "list#show"
  
  root 'application#hello'
  
end