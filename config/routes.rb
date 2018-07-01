Rails.application.routes.draw do
  resources :students, only: [:index, :show, :new, :create, :edit]
  resources :school_classes, only: [:index, :show, :new, :create, :edit]
  patch 'students/:id', to: 'students#update'
  patch 'school_classes/:id', to: 'school_classes#update'
end
