Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :students, only: [:index, :create, :show, :edit]
  resources :schoolclass, only: [:index, :create, :show, :edit]
  

end
