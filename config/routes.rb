Rails.application.routes.draw do
  resources 'students', only: [:index, :show, :edit, :create, :new]
  patch 'students/:id', to: 'students#update'

  resources 'school_classes', only: [:index, :show, :edit, :create, :new]
  patch 'school_classes/:id', to: 'school_classes#update'
end
