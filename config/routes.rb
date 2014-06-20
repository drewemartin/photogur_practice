Photogur::Application.routes.draw do
  
  root :to => "pictures#index"

  get 'pictures' => 'pictures#index'

  get 'pictures/new' => 'pictures#new'
  post 'pictures' => 'pictures#create'
  
  patch 'pictures/:id' => 'pictures#update' 
  get 'pictures/:id/edit' => 'pictures#edit', as: "edit_picture"

  get 'pictures/:id' => 'pictures#show', as: "picture" #"picture refers to prefix alias in rake routes"

  delete 'pictures/:id' => 'pictures#destroy', as: "delete_picture"
end
