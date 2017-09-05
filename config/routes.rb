Rails.application.routes.draw do

  resources :students, only: [:index, :show, :new, :create]
  
  get 'students/:id/edit', to: 'students#edit', as: :edit_student
  patch 'students/:id', to: 'students#update'

  resources :school_classes, only: [:index, :show, :new, :create]
  
  get 'school_classes/:id/edit', to: 'school_classes#edit', as: :edit_school_class
  patch 'school_classes/:id', to: 'school_classes#update'

end
