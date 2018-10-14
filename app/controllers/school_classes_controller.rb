class SchoolClassesController < ApplicationController

    def index
        @classes = SchoolClass.all 
    end
    
    def create
    end

    def show
    end

    def edit
    end

    def update
    end
end