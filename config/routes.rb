Rails.application.routes.draw do
  resources :school_classes, only: [:index, :new, :show, :create, :edit, :update]
  resources :students, only: [:index, :new, :show, :create, :edit, :update]
end
