class SchoolClassesController < ApplicationController
  def new

  end

  def create

    redirect_to school_classes_path
  end

  def index

  end

  def show

  end

  def edit

  end

end

# rake routes
#              Prefix Verb  URI Pattern                    Controller#Action
#            students POST  /students(.:format)            students#create
#        new_students GET   /students/new(.:format)        students#new
#       edit_students GET   /students/edit(.:format)       students#edit
#                     GET   /students(.:format)            students#show
#                     PATCH /students(.:format)            students#update
#                     PUT   /students(.:format)            students#update
#      school_classes POST  /school_classes(.:format)      school_classes#create
#  new_school_classes GET   /school_classes/new(.:format)  school_classes#new
# edit_school_classes GET   /school_classes/edit(.:format) school_classes#edit
#                     GET   /school_classes(.:format)      school_classes#show
#                     PATCH /school_classes(.:format)      school_classes#update
#                     PUT   /school_classes(.:format)      school_classes#update
