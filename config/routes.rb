Rails.application.routes.draw do
  #resources :school_class, only: [:new, :create, :show, :edit]
  resources :school_classes, only: [:new, :create, :show, :edit, :update]
  # resources :students, only: [:new, :create, :show, :edit]
  resources :students, only: [:new, :create, :show, :edit, :update]
end
