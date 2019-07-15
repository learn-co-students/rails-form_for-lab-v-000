class SchoolClassesController < ApplicationController

  def new
    @school_class = SchoolClass.new
  end

  def create
    # binding.pry
    @school_class = SchoolClass.new(post_params)

    @school_class.save
    # binding.pry
    redirect_to school_class_path(@school_class)

  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(post_params)
    redirect_to school_class_path(@school_class)
  end

  private

  def post_params
    params.require(:school_class).permit(:title, :room_number)
  end
end


#
# Prefix Verb  URI Pattern                        Controller#Action
# students POST  /students(.:format)                students#create
# new_student GET   /students/new(.:format)            students#new
# edit_student GET   /students/:id/edit(.:format)       students#edit
# student GET   /students/:id(.:format)            students#show
#        PATCH /students/:id(.:format)            students#update
#        PUT   /students/:id(.:format)            students#update
# school_classes POST  /school_classes(.:format)          school_classes#create
# new_school_class GET   /school_classes/new(.:format)      school_classes#new
# edit_school_class GET   /school_classes/:id/edit(.:format) school_classes#edit
# school_class GET   /school_classes/:id(.:format)      school_classes#show
#        PATCH /school_classes/:id(.:format)      school_classes#update
#        PUT   /school_classes/:id(.:format)      school_classes#update
