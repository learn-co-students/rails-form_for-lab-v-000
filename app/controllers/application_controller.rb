class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  private
  def class_params(*args)
    params.require(:school_class).permit(*args)
  end

  def student_params(*args)
    params.require(:student).permit(*args)
  end
end
