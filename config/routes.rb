Rails.application.routes.draw do

  resources :students
  # patch 'students/:id', to: 'students#update'

  resources :school_classes
  # patch 'school_classes/:id', to: 'school_classes#update'

end
