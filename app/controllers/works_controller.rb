class WorksController < ApplicationController
  def create
    @tags = Tag.all
    @work = Work.new(work_params)
    if @work.save
      flash[:notice] = "Saved"
      redirect_to root_path
    else
      flash[:notice] = "error occured!"
      render 'new'
    end
  end

  def update
    @work = Work.find(params[:id])
    @work.update(work_params)
    redirect_to works_index_path
  end

  def new
    @work = Work.new
    @tags = Tag.all
  end

  def edit
    @tags = Tag.all
    @work = Work.find(params[:id])
  end

  def destroy
    @tags = Tag.all
    @work = Work.find(params[:id])
    @work.destroy
    flash[:notice] = "Deleted"
    redirect_to works_index_path
  end

  def show
    @tags = Tag.all

  end

  def index
    @works = Work.all
    @tags = Tag.all
  end

  private
  def work_params
    params.require(:work).permit(:title, :desc, :image, :tag_id)
  end
end
