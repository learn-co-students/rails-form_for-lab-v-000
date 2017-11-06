Rails.application.routes.draw do
  resources :school_classes, only: [:new, :create, :show, :edit, :update]
  resources :students, only: [:new, :create, :show, :edit, :update]
end

# lines above could also be written as:
# Rails.application.routes.draw do
#   resources :students, except: [:destroy, :index]
#   resources :school_classes, except: [:destroy, :index]
# end

# line 2 is the same as saying:

# get '/school_classes/new', to: 'school_classes#new'
# route leading to form to create new school_class is mapped to #new action in SchoolClassesController class
# route is named new_school_class, so #new_school_class_path route helper returns "/school_classes/new" URL to form to create new school_class

# post '/school_classes', to: 'school_classes#create'
# route receives data submitted in form to create a new school_class. Route is mapped to #create action in SchoolClassesController

# get '/school_classes/:id', to: 'school_classes#show'
# route is GET request to show page to display a single school_class identified by its id attribute value, i.e., whatever replaces :id route variable
# route is mapped to #show action in SchoolClassesController
# school_class is the name of this route, so #school_class_path(school_class) route helper would return "/school_class/some id" show page path

# get '/school_classes/:id/edit', to: 'school_classes#edit'
# route is GET request to '/school_classes/id value of school_class to be edited/edit', which leads to form to edit school_class
# route is mapped to #edit action in SchoolClassesController

# patch '/school_classes/:id', to: 'school_classes#update'
# route could be either PUT or PATCH request by chose PATCH here
# route receives data submitted in the edit form to edit school_class
# route is mapped to #update action in SchoolClassesController class

# --
# line 3 is the same as saying:

# get '/students/new', to: 'students#new'
# route leading to form to create new student is mapped to #new action in StudentsController

# post '/students', to: 'students#create'
# route receives data submitted in form to create a new student. Route is mapped to #create action in StudentsController

# get '/students/:id', to: 'students#show'
# route is GET request to show page to display a single student identified by its id attribute value, i.e., whatever replaces :id route variable
# route is mapped to #show action in StudentsController
# student is the name of this route, so #student_path(student) route helper returns "/students/some id" show page path

# get '/students/:id/edit', to: 'students#edit'
# route is GET request to '/students/id value of student to be edited/edit', which leads to form to edit student
# route is mapped to #edit action in StudentsController class,

# patch '/students/:id', to: 'students#update'
# route could be either PUT or PATCH request by chose PATCH here
# route receives data submitted in the edit form to edit student
# route is mapped to #update action in StudentsController class
