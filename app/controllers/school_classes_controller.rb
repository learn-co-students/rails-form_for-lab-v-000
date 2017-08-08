class SchoolClassesController < ApplicationController

    def index
    end

    def show
        @school_class = SchoolClasses.find(params[:id])
    end

    def new
    end

    def create

    end

    def edit
    end

end
