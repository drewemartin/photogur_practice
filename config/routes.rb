Photogur::Application.routes.draw do
  get 'pictures' => 'pictures#index'

  get 'pictures/new' => 'pictures#new'
  post 'pictures' => 'pictures#create'
  
  post 'pictures/:id' => 'pictures#update'
  get 'pictures/:id/edit' => 'pictures#edit'
  

  get 'pictures/:id' => 'pictures#show', as: "picture" #"picture refers to prefix alias in rake routes"

  


end
