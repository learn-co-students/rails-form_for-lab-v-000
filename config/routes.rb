Rails.application.routes.draw do
  resources :students, :school_classes, only: [:new, :create, :show, :edit]
  patch 'students/:id', to: 'students#update'
  patch 'school_classes/:id', to: 'school_classes#update'
end
