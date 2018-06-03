class SchoolClassesController <  ApplicationController

  def create
    @school_class = SchoolClass.create(params[:school_class])
    redirect_to(@school_class)
  end

  def new
      @school_class = SchoolClass.new
  end

  def edit
    find_by_id(params)
  end

  def update
    find_by_id(params)
    @school_class.update(params[:school_class])
    redirect_to @school_class
  end

  def show
    find_by_id(params)
  end

end

private
  def find_by_id(params)
    @school_class = SchoolClass.find_by(params[:id])
  end
