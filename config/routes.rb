Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :students, :school_classes, except: [:index, :destroy]
  # This actually works! I get every route except 'destroy' for BOTH controllers.
  # 'resources :students, not: :destroy' is legal code, but it does something different.
  # It generates all of the routes, and one example controller action is 'students#edit {:not=>:destroy}'
end
