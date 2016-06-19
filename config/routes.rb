Rails.application.routes.draw do
  resources :students
  resources :school_classes
  patch 'school_classes/:id', to: 'school_classes#update'
end
