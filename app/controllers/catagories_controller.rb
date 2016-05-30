class CatagoriesController < ApplicationController
  def new
    @page_title = 'Add New Category'
    @catagory = Catagory.new
  end

  def create
    @catagory = Catagory.new(catagory_params)
    if @catagory.save
      flash[:notice] = "Category Created"
      redirect_to catagories_path
    else 
      render 'new'
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
    @catagories = Catagory.all
  end

  def show
    @catagory = Catagory.find(params[:id])
    @catagories = Catagory.all
    @books = @catagory.books
  end

  private
  def catagory_params
    params.require(:catagory).permit(:name)
  end
end
