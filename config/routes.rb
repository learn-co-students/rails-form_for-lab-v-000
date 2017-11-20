Rails.application.routes.draw do
  resources :school_classes, only: [:new, :create, :show, :edit, :update]
  resources :students, only: [ :show, :new, :create, :edit, :update]
end
