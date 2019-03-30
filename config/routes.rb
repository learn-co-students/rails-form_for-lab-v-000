Rails.application.routes.draw do
  resources :students, only: [:index, :new, :create, :show, :update, :edit]
  resources :school_classes, only: [:index, :new, :create, :show, :update, :edit]
  # get 'students/show'
  #
  # get 'students/new'
  #
  # get 'students/edit'
  #
  # get 'students/create'
  #
  # get 'school_classes/show'
  #
  # get 'school_classes/new'
  #
  # get 'school_classes/edit'
  #
  # get 'school_classes/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
