class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def edit; end

  def create
    @project = Project.new(project_params)

    if @project.save
    redirect_to @project
    else
      render 'new'
    end
  end

  def update; end

  def destroy; end

  private

  def project_params
    params.require(:project).permit(:title)
  end
end
