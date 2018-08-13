Rails.application.routes.draw do
  resources :school_classes, only: [:show, :edit, :new, :create, :update]
  patch 'school_classes/:id', to: 'school_classes#update'

  resources :students, only: [:show, :edit, :new, :create, :update]
end
