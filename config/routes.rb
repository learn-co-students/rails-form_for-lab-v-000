Rails.application.routes.draw do
  resources :students, only: [:index, :new, :create]
  get '/student/:id', to: 'students#show', as: 'student'
  get 'student/:id/edit', to: 'students#edit', as: :edit_student
  patch 'student/:id', to: 'students#update'

  resources :school_classes, only: [:index, :new, :create]
  get '/school_class/:id', to: 'school_classes#show', as: 'school_class'
  get 'school_class/:id/edit', to: 'school_classes#edit', as: :edit_school_class
  patch 'school_class/:id', to: 'school_classes#update'
end
