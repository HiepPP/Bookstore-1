class BooksController < ApplicationController
  def new
    @page_title = 'Add New Book'
    @book = Book.new
    @catagory = Catagory.new
    @author = Author.new
    @publisher = Publisher.new
  end

  def create
    @book = Book.new(book_params)
    @book.save

    redirect_to books_path
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
    @catagories = Catagory.all
  end

  private
  def book_params
    params.require(:book).permit(:title, :catagory_id, :author_id, :publisher_id, :isbn, :price, :buy, :format, :excerpt, :pages, :year, :coverpath)
  end
end
