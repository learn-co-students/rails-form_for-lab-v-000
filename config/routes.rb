Rails.application.routes.draw do
  resources :students, :school_classes, only: [:index, :show, :new, :create, :edit]

  patch '/school_classes/:id', to: 'school_classes#update' 
  patch '/students/:id', to: 'students#update'
end
