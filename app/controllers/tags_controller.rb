class TagsController < ApplicationController

  def create
    @tag = Tag.new(tag_params)
    if @tag.save
      flash[:notice] = "New Tag created"
      redirect_to tags_index_path
    else
      flash[:alert] = "Error occured"
      render 'new'
    end
  end

  def update
    @tag = Tag.find(params[:id])
    if @tag.update(tag_params)
      flash[:notice] = "Updated"
      redirect_to tags_index_path
    else
      flash[:alert] = "Error occured"
      render 'edit'
    end
  end

  def new
    @tag = Tag.new
    @works = Work.all
    @tags = Tag.all
  end

  def edit
    @tag = Tag.find(params[:id])
    @tags = Tag.all
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    flash[:notice] = "Deleted"
    redirect_to tags_index_path
  end

  def show
    @tag = Tag.find(params[:id])
    @tags = Tag.all
  end

  def index
    @tags = Tag.all
  end

  private
  def tag_params
    params.require(:tag).permit(:name)
  end

end
