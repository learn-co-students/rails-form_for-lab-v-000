Rails.application.routes.draw do
  # resources :students, only: [:new, :show, :create, :edit, :update]

  get '/students/new' => 'students#new', as: :new_student
  post '/students' => 'students#create'
  get '/students/:id' => 'students#show', as: :student
  get '/students/:id/edit' => 'students#edit', as: :edit_student
  patch '/students/:id' => 'students#update'



  # resources :school_classes, only: [:new, :show, :create, :edit, :update]

  get '/school_classes/new' => 'school_classes#new', as: :new_school_class
  post '/school_classes' => 'school_classes#create'
  get '/school_classes/:id' => 'school_classes#show', as: :school_class
  get '/school_classes/:id/edit' => 'school_classes#edit', as: :edit_school_class
  patch '/school_classes/:id' => 'school_classes#update'

end
