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
        @school_class = SchoolClass.new(school_classes_params(:title, :room_number))
        @school_class.save
        redirect_to school_class_path(@school_class)
    end

    def edit
        @school_class = SchoolClass.find(params[:id])      
    end
    
    def update
      @school_class = SchoolClass.find(params[:id])
      @school_class.update(school_classes_params(:title, :room_number))
      redirect_to school_class_path(@school_class)      
    end
  
    private

    def school_classes_params(*args)
        params.require(:school_class).permit(*args)
    end
  end
  