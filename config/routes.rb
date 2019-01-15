Rails.application.routes.draw do

  resources :students, only: %i[index show new create update edit]

  resources :school_classes, only: %i[index show new create update edit]
  #
  # get 'schoolclass/:id/edit', to: 'articles#edit', as: :edit_article
  #
  # patch 'schoolclass/:id', to: 'articles#update'

end
