Rails.application.routes.draw do
  resources :school_classes, only: [:create, :new]
end
