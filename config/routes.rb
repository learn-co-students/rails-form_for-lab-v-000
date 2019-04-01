Rails.application.routes.draw do
  resources :school_classes, only: [:new, :create, :show, :update]

  resources :students, only: [:new, :create, :show, :update]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
