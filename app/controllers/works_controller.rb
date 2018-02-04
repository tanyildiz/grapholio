class WorksController < ApplicationController
  def create
    @work = Work.new(params[:id])
    if @work.save
      flash[:notice] = "Saved"
      redirect_to root_path
    else
      flash[:notice] = "error occured!"
      render 'new'
    end
  end

  def update
  end

  def new
    @work = Work.new
    @tag = Tag.all
  end

  def edit
  end

  def destroy
  end

  def show
  end

  def index
  end
end
