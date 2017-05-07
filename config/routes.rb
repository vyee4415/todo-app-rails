Rails.application.routes.draw do

  get 'list/index'
  get "list/:id" => "list#show"
  
  root 'application#hello'
  
end