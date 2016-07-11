class SchoolClasses < ActiveRecord::Base

def show
    @schoolclass = SchoolClass.find(params[:id])
  end

  def new
    @schoolclass = SchoolClass.new
  end

  def create
    @schoolclass = SchoolClass.new(params.require(:school_class).permit(:title, :room_number))
    @schoolclass.save
    redirect_to school_class_path(@schoolclass)
  end
   
  def update
    @schoolclass = SchoolClass.find(params[:id])
    @schoolclass.update(params.require(:school_class).permit(:title, :room_number))
    redirect_to school_class_path(@schoolclass)
  end

  def edit
    @schoolclass = SchoolClass.find(params[:id])
  end


end
