class TagsController < ApplicationController
  def create
    @tagCreate = Tag.new(tag_params)
    if @tagCreate.save
      flash[:notice] = "New Tag created"
      redirect_to tags_index_path
    else
      flash[:alert] = "Error occured"
      render 'new'
    end
  end

  def update
  end

  def new
    @tagCreate = Tag.new
  end

  def edit
    @tagEdit = Tag.find(params[:id])
  end

  def destroy
  end

  def show
    @tagsShow = Tag.all
  end

  def index
    @tagsIndex = Tag.all
  end

  private
  def tag_params
    params.require(:tag).permit(:name)
  end

end
