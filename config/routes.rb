Rails.application.routes.draw do
  resources :school_classes, only: [:show, :new, :create, :edit]
  patch 'school_classes/:id', to: 'school_classes#update'

  resources :students, only: [:show, :new, :create, :edit]
  patch 'students/:id', to: 'students#update'
end
