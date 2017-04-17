Rails.application.routes.draw do
  resources :students, only: [:show, :new, :create, :edit]
  resources :school_classes, only: [:show, :new, :create, :edit]
  patch 'school_classes/:id' => 'school_classes#update'
  patch 'students/:id' => 'students#update'
end
