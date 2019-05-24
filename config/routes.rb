Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  patch 'students/:id', to: 'students#update'
  resources :students, only: %i[index show new create edit update]
  patch 'school_classes/:id', to: 'school_classes#update'
  resources :school_classes, only: %i[index show new create edit update]
end
