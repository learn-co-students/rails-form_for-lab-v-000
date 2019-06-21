Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :students, only: [:index, :show, :create, :edit, :update]
  resources :schoolclass, only: [:index, :show, :create, :edit, :update]
  

end
