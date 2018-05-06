Rails.application.routes.draw do
  resources :students, only: [:index, :new, :create, :show, :update, :edit]
  resources :school_classes, only: [:index, :new, :create, :show, :update, :edit]
end
