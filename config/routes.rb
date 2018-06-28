Rails.application.routes.draw do
  resources :students, only: [:show, :new, :create, :update, :edit]
  resources :school_classes, only: [:show, :new, :create, :update, :edit]
end
