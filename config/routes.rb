Rails.application.routes.draw do
  resources :students, only: [:index, :show, :new, :create, :edit]
  get '/students/:id/edit', to: 'students#edit'
  patch 'students/:id', to: 'students#update'
  resources :school_classes, only: [:index, :show, :new, :create, :edit]
  get '/school_classes/:id/edit', to: 'school_classes#edit'
  patch 'school_classes/:id', to: 'school_classes#update'

end
