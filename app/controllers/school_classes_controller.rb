class SchoolClassesController <  ApplicationController

  def create
    #binding.pry
    @school_class = SchoolClass.create(params[:school_class])
    redirect_to(@school_class)
  end

end
