Rails.application.routes.draw do
  resources :students, only: [:edit, :show, :new, :create]
  resources :school_classes, only: [:edit, :show, :new, :create]
end
