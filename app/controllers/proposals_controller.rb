class ProposalsController < ApplicationController
  before_action :set_proposal, only: [:show, :edit, :update]
  before_action :set_project, only: [:new, :create, :edit, :update, :show]
  def index
    @proposals = Proposal.where(user_id: current_user)
  end

  def myindex
    @proposals = Proposal.where(user: current_user)
  end

  def show
  end

  def new
    @proposal = Proposal.new
  end

  def create
    @proposal = Proposal.new(user_params)
    @proposal.user = current_user
    @proposal.project = @project
    if @proposal.save
      redirect_to project_proposal_path(@project, @proposal), notice: 'Your proposal has been created!'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @proposal.update(user_params)
      redirect_to project_proposal_path, notice: 'Your proposal has been update!'
    else
      render :edit
    end
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def set_proposal
    @proposal = Proposal.find(params[:id])
  end

  def set_user
    @user = current_user
  end

  def user_params
    params.require(:proposal).permit(:image, :price, :duration, :description, :project_id, :user_id, :status)
  end
end
