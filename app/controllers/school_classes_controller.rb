class SchoolClassesController < ApplicationController
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception

    def index
        @school_classes = SchoolClass.all
    end

    def new
        @school_classes = SchoolClass.new
    end

    def show
        @school_class = SchoolClass.find(params[:id])
    end

    def create
        @school_class = SchoolClass.new(school_classes_params)
        @school_class.save
        redirect_to schoolclass_path(@school_class)
    end

    private

    def school_classes_params(*args)
        params.require(:school_classes).permit(*args)
    end
  end
  