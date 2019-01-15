Rails.application.routes.draw do

  resources :students, only: %i[index show new create]

  resources :school_classes, only: %i[index show new create]
  #
  # get 'schoolclass/:id/edit', to: 'articles#edit', as: :edit_article
  #
  # patch 'schoolclass/:id', to: 'articles#update'

end
