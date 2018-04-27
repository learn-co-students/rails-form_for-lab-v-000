class SchoolClassesController < ApplicationController
    def show
      #query object by id
      @school_class = SchoolClass.find(params[:id])
      #render show page with object specific info
    end

    def new
      @school_class = SchoolClass.new
      #render new form
    end

    def edit
      #query object by id
      @school_class = SchoolClass.find(params[:id])
      #render edit form
    end

    def create
      #create new Object
      @school_class = SchoolClass.create(params.require(:school_class).permit(:title, :room_number))
      #reroute to show page
      redirect_to school_class_path(@school_class)
    end


    def update
      #query object by id
      @school_class = SchoolClass.find(params[:id])
      #update that object
      @school_class.update(params.require(:school_class).permit(:title, :room_number))
      #reroute to show page
      redirect_to school_class_path(@school_class)
    end

end
