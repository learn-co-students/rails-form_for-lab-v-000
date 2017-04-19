class SchoolClass < ActiveRecord::Base

  def find_by_id
    @school_class = SchoolClass.find(params[:id])
  end

end
