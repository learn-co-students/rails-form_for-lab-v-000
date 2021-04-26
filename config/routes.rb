Rails.application.routes.draw do
  resources :school_classes, only: [:index, :show, :new, :create, :edit, :update]

  patch 'school_classes/:id', to: 'school_classes#update'

  resources :students, only: [:index, :show, :new, :create, :edit, :update]


  patch 'students/:id', to: 'students#update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
