class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :destroy]
  def index
  @projects = Project.all
  end

  def show
  end

  def new
  end

  def create
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
