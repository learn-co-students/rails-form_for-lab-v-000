Rails.application.routes.draw do
  resources :school_classes, only: [:new, :create, :edit, :show, :update]
  resources :students, only: [:new, :create, :edit, :show, :update]
end
