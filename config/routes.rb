Rails.application.routes.draw do
  resources :students, only: [:index, :new, :show, :create, :edit, :update]
  resources :school_classes, only: [:index, :new, :show, :create, :edit, :update]
end
