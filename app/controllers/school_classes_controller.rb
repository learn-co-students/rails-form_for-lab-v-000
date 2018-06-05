class SchoolClassesController <  ApplicationController
  require 'concerns/set_record.rb'
  extend LocateRecord

  def create
    @school_class = SchoolClass.create(params[:school_class])
    redirect_to(@school_class)
  end

  def new
      @school_class = SchoolClass.new
  end

  def edit
    find_by_id
  end

  def update
    find_by_id
    @school_class.update(user_params(:title, :room_number))
    redirect_to @school_class
  end

  def show
    find_by_id
  end

end

private
  def  find_by_id
    @school_class = LocateRecord.find_by_id(params)
  end

  def user_params(*args)
    params.require(:school_class).permit(args)
  end
