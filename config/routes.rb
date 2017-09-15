Rails.application.routes.draw do
  resources :students, only: [:index, :show, :new, :create, :edit, :update]
  resources :school_classes, only: [:index, :show, :new, :create, :edit, :update]
  patch 'students/:id', to: 'students#update'
  patch 'school_classes/:id', to: 'school_classes#update'
end
