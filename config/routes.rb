Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get  '/lists',     to: 'lists#index'
  # get  '/lists/new', to: 'lists#new',  as: 'new_list'
  # get  '/lists/:id', to: 'lists#show', as: 'list'
  # post '/lists',     to: 'lists#create'
  # get    '/lists/:list_id/bookmarks/new', to: 'bookmarks#new', as: 'new_bookmark'
  # post   '/lists/:list_id/bookmarks',      to: 'bookmarks#create', as: 'list_bookmarks'
  # delete '/bookmarks/:id',            to: 'bookmarks#destroy', as: 'bookmark'
  root to: 'lists#index'
  resources :lists do
    resources :bookmarks, only: [ :new, :create ]
  end
  resources :movies, only: :destroy
end
