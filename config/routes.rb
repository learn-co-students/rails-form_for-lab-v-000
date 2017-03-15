Rails.application.routes.draw do
  resources :students, only: [:create, :new, :edit, :show, :update]
  resources :school_classes, only: [:create, :new, :edit, :show, :update]
end
