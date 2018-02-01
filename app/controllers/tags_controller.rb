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
    @tag.save
  end

  def new
    @tag = Tag.new
  end

  def edit
    @tag = Tag.find(params[:id])
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    flash[:notice] = "Deleted"
    redirect_to tags_show_path
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def index
    @tags = Tag.all
    @tag = Tag.find(tag_params)
  end

  private
  def tag_params
    params.permit(:name)
  end

end
