class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:create, :destroy]

  def index
    @projects = Project.all
  end

  def show
  end

  def myindex
    @projects = Project.where(user: current_user)
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(user_params)
    @project.user = @user
    if @project.save
      redirect_to project_path(@project), notice: 'Your project has been created!'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @project.update(user_params)
      redirect_to project_path(@project), notice: 'Your project has been edited!'
    else
      render :edit
    end
  end

  def destroy
    @project.destroy
    redirect_to projects_path
  end

  private

  def set_user
    @user = current_user
  end

  def set_project
    @project = Project.find(params[:id])
  end

  def user_params
    params.require(:project).permit(:title, :location, :dimensions, :description, :image, :image_cache, :room, :budget, :deadline, :user_id)
  end
end
