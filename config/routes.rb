Photogur::Application.routes.draw do
  get 'pictures' => 'pictures#index'

  get 'pictures/new' => 'pictures#new'
  post 'pictures' => 'pictures#create'

  get 'pictures/:id/edit' => 'pictures#edit'
  post 'pictures/:id' => 'pictures#update'

  get 'pictures/:id' => 'pictures#show', as: "picture" #"picture refers to prefix alias in rake routes"

  


end
