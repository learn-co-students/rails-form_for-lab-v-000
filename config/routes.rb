Rails.application.routes.draw do
  resources :students, only: [:show, :index, :new, :edit, :create, :update]
  resources :school_classes, only: [:show, :index, :new, :edit, :create, :update]
end
