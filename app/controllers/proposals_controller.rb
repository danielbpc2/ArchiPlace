class ProposalsController < ApplicationController
  before_action :set_proposal, only: [:show, :edit]

  def index
    @proposals = Proposal.all
  end

  def show
  end

  def new
    @proposal = Proposal.new
  end

  def create
    @proposal = Proposal.new
      if @proposal.save
        redirect_to proposal_path, notice: 'Your proposal has been created!'
      else
        render :new
    end
  end

  def edit
  end

  def update
  end
end

private

  def set_proposal
    @proposal = Proposal.find(params[:id])
  end
