Rails.application.routes.draw do
  root to: 'cats#index'
  get 'cats', to: 'cats#index', as: :cats

  # NEW / CREATE
  get 'cats/new', to: 'cats#new', as: :new_cat
  post 'cats', to: 'cats#create'

  # EDIT / UPDATE
  get '/cats/:id/edit', to: 'cats#edit', as: :edit_cat
  patch '/cats/:id', to: 'cats#update'

  # SHOW
  get 'cats/:id', to: 'cats#show', as: :cat

  # DESTROY
  delete 'cats/:id', to: 'cats#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
