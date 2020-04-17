class PathsController < ApplicationController
  def index
    @paths = Path.all
  end

  def show
    @path = Path.find(params[:id])
  end

  def new
    @path = Path.new
  end

  def create
    @path = Path.new(params.require(:path).permit(:title, :description, :header_image))
    @path.user = current_user
    if @path.save
      flash[:notice] = "Path created!"
      redirect_to @path
    else
      flash[:error] = "Oops something went wrong"
      render :new
    end
  end

  def edit
    @path = Path.find(params[:id])
  end

  def update
    @path = Path.find(params[:id])
    if @path.update_attributes(params.require(:path).permit(:title, :description, :header_image))
      flash[:notice] = "Path updates!"
      redirect_to @path
    else
      flash[:error] = "Oops something went wrong"
      render :edit
    end
  end

  def destroy
    @path = Path.find(params[:id])

    if @path.destroy
      flash[:notice] = "\"#{@path.title}\" was deleted :("
      redirect_to root_path
    else
      flash[:error] = "Something went wrong"
      redirect_to :show
    end
  end
end
