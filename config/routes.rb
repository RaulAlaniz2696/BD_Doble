Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books
  get '/books/:id/comments', to: 'books#comments', as: 'comments'
  post '/books/add_comment', to: 'books#add_comment', as: 'add_comment'
end
