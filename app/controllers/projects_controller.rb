class ProjectsController < ApplicationController
    def index 
        render json: Project.all
    end

    def update
        render json: Project.all
    end
end
