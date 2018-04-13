Rails.application.routes.draw do
  resources :students, only: %i[new edit create show update]
  resources :school_classes, only: %i[new edit create show update]
end
