Rails.application.routes.draw do
  resources :school_classes, only: %i[index new create edit update show]
  resources :students, only: %i[index new create edit update show]
end
