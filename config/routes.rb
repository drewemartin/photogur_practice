Photogur::Application.routes.draw do
  get 'pictures' => 'pictures#index'

  get 'pictures/:id' =>'pictures#show', as: "picture" #"picture refers to prefix alias in rake routes"
end
