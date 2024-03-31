Rails.application.routes.draw do
    devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "home/about"=>"homes#about"
  root :to =>"homes#top"
 



  resources :books, only: [:index,:show,:edit,:create,:destroy,:update] do
    resources :book_comments, only: [:create, :destroy]
   end
  
  resources :users, only: [:index,:show,:edit,:update]
  
  resources :books do
    resource :favorite, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end