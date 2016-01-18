class ResearchesController < ApplicationController
  before_action :set_research, only: [:show, :edit, :update, :destroy]
  def index
    @researches = Research.all
  end

  def show
  end

  def new
    @research = Research.new
  end

  def create
    @research = Research.new(research_params)

    if @research.save
      redirect_to @research
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @research.update(research_params)
      redirect_to @research
    else
      render :edit
    end
  end

  def destroy
    @research.destroy
    redirect_to researches_path
  end

  private

  def set_research
    @research = Research.find(params[:id])
  end

  def research_params
    params.require(:research).permit(:title, :author, :category, :body, :description)
  end
end
