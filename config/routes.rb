Rails.application.routes.draw do
  get 'home/index'

  get 'tags/create'

  get 'tags/update'

  get 'tags/new'

  get 'tags/edit'

  get 'tags/destroy'

  get 'tags/show'

  get 'tags/index'

  get 'works/create'

  get 'works/update'

  get 'works/new'

  get 'works/edit'

  get 'works/destroy'

  get 'works/show'

  get 'works/index'

  root 'home#index'

  resources :tags
  resources :works

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
