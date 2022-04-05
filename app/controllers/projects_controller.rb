class ProjectsController < ApplicationController
    def index 
        render json: Project.joins(:todos)
    end

    def create
        render json: Project.create(project_params)
    end

    private def project_params 
        params.require(:project).permit(:title)
    end
end
