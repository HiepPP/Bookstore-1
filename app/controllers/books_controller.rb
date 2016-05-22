class BooksController < ApplicationController
  def new
    @page_title = 'Add New Book'
    @book = Book.new
    @catagory = Catagory.new
    @author = Author.new
    @publisher = Publisher.new
  end

  def create
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
  end

  def show
  end
end
