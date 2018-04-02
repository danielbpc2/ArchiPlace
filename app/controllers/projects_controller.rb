class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :destroy]
  def index
    @projects = Project.all
  end

  def show
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(user_params)
    if @project.save
      redirect_to
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def user_params
  end
end
