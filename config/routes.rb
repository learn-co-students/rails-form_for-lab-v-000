Rails.application.routes.draw do
  resources :school_classes, only: [:show, :new, :create, :edit, :update, :index]
  resources :students, only: [:show, :new, :create, :edit, :update, :index]
end
