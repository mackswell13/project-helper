class ProjectsController < ApplicationController
  def index
    @project = Current.user.projects
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    puts params
    @project = Current.user.projects.create(project_params)

    redirect_to @project
  end

  def project_params
    params.require(:project).permit(:name)
  end
end
