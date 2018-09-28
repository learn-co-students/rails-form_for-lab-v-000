Rails.application.routes.draw do
  resources :students, only: [:index, :show, :new, :edit, :create, :update]
  resources :school_classes, only: [:index, :show, :new, :edit, :create, :update]
end
